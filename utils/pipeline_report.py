#!/usr/bin/env python3

"""
Pipeline report

This script provides a report on the status of GNOME's OpenQA testing.
"""

import argparse
from io import BytesIO
import logging
import json
import os
import sys
from zipfile import ZipFile

import requests
from requests.exceptions import HTTPError

log = logging.getLogger()


API_BASE = "https://gitlab.gnome.org/api/v4/"
PROJECT_ID = "gnome%2Fgnome-build-meta"


def argument_parser():
    parser = argparse.ArgumentParser(description="Pipeline report tool")
    parser.add_argument(
        "--debug",
        dest="debug",
        action="store_true",
        help="Enable detailed logging to stderr",
    )
    parser.add_argument(
        "--earlier",
        type=int,
        metavar="N",
        help="Return pipeline N steps before the specified one",
    )
    parser.add_argument(
        "pipeline",
        nargs="?",
        help="Pipeline ID. Leave empty for latest pipeline on default branch."
    )
    return parser


class JobArtifactsNotFoundError(Exception):
    pass


class GitlabAPIHelper:
    def _json(self, url, params=None):
        response = requests.get(url, params=params)
        response.raise_for_status()
        return response.json()

    def _binary(self, url, params=None):
        response = requests.get(url, params=params)
        response.raise_for_status()
        return BytesIO(response.content)

    def query_latest_pipeline(self):
        # Get latest pipeline for default project branch ('master').
        return self._json(f"{API_BASE}/projects/{PROJECT_ID}/pipelines/latest")

    def query_pipeline(self, pipeline_id):
        return self._json(f"{API_BASE}/projects/{PROJECT_ID}/pipelines/{pipeline_id}")

    def list_pipelines(self, ref=None, updated_before=None):
        return self._json(
            f"{API_BASE}/projects/{PROJECT_ID}/pipelines",
            params=dict(ref=ref, updated_before=updated_before),
        )

    def query_pipeline_jobs(self, pipeline_id):
        return self._json(
            f"{API_BASE}/projects/{PROJECT_ID}/pipelines/{pipeline_id}/jobs"
        )

    def query_job_log(self, job_id):
        return self._json(f"{API_BASE}/projects/{PROJECT_ID}/jobs/{job_id}/trace")

    def query_job_artifacts(self, job_id):
        try:
            return self._binary(f"{API_BASE}/projects/{PROJECT_ID}/jobs/{job_id}/artifacts")
        except HTTPError as e:
            if e.response.status_code == 404:
                raise JobArtifactsNotFoundError()
            raise


def find_in_list(l, predicate, error_text):
    for item in l:
        if predicate(item):
            return item
    raise RuntimeError(error_text)


TEMPLATE_GITLAB = """
GNOME OS version:

 * Repo: gnome-build-meta
 * Commit: {gnome_build_meta_commit_id}
 * Commit date: {gnome_build_meta_commit_date}
 * Commit title: {gnome_build_meta_commit_title}

Integration tests status (Gitlab):

 * Pipeline: https://gitlab.gnome.org/gnome/gnome-build-meta/-/pipelines/{gitlab_pipeline_id}
 * test-s3-image job: https://gitlab.gnome.org/gnome/gnome-build-meta/-/jobs/{gitlab_test_s3_image_job_id}
 * test-s3-image job status: {gitlab_test_s3_image_job_status}
 * test-s3-image job finished at: {gitlab_test_s3_image_job_finished_at}"""

TEMPLATE_OPENQA = """
Integration tests status (OpenQA):

 * OpenQA job: https://openqa.gnome.org/tests/{openqa_job_id}
"""


class ScriptHelper:
    def find_pipeline(self, api, pipeline_id=None, earlier=None, ref='master'):
        """Find the right pipeline based on the commandline options."""
        if pipeline_id:
            pipeline = api.query_pipeline(pipeline_id)
        else:
            pipeline = api.query_latest_pipeline()
            print(f"Latest gnome-build-meta pipeline on default branch is {pipeline['id']}. Pipeline status: {pipeline['status']}")
        if earlier:
            earlier_pipelines = api.list_pipelines(ref=ref, updated_before=pipeline["updated_at"])
            log.info(
                "Finding pipeline %s steps earlier than %s: got %s",
                earlier, pipeline["id"], len(earlier_pipelines)
            )
            if earlier > len(earlier_pipelines):
                raise RuntimeError(
                    f"Can't go {earlier} steps earlier than pipeline {pipeline['id']}. "
                    f"Only {len(earlier_pipelines)} pipelines are available before this one."
                )
            earlier_pipeline = earlier_pipelines[earlier - 1]
            print(f"Pipeline {earlier} steps than {pipeline['id']} is {earlier_pipeline['id']}. Pipeline status: {earlier_pipeline['status']}")
            return earlier_pipeline
        return pipeline

    def generate_report(self, api: GitlabAPIHelper, pipeline: dict) -> dict:
        """Generate the report for a specific pipeline."""
        jobs = api.query_pipeline_jobs(pipeline["id"])
        test_s3_image_job = find_in_list(
            jobs,
            lambda item: item["name"] == "test-s3-image",
            "Couldn't find test-s3-image job",
        )
        test_s3_image_job_id = test_s3_image_job["id"]
        log.debug("Found test-s3-image job with ID %s", test_s3_image_job_id)

        try:
            artifacts_zip = api.query_job_artifacts(test_s3_image_job_id)
            with ZipFile(artifacts_zip, "r") as z:
                with z.open("openqa.log") as f:
                    openqa_status_line = f.readline().decode()
            openqa_status = json.loads(openqa_status_line)
            openqa_job_id = openqa_status["ids"][0]
        except JobArtifactsNotFoundError:
            log.info("Job artifacts not found")
            openqa_status = "Unknown"
            openqa_job_id = None

        report_gitlab = dict(
            gnome_build_meta_ref=pipeline["ref"],
            gnome_build_meta_commit_id=pipeline["sha"],
            gnome_build_meta_commit_date=test_s3_image_job["commit"]["created_at"],
            gnome_build_meta_commit_title=test_s3_image_job["commit"]["title"],
            gitlab_pipeline_id=pipeline["id"],
            gitlab_test_s3_image_job_id=test_s3_image_job_id,
            gitlab_test_s3_image_job_finished_at=test_s3_image_job["finished_at"],
            gitlab_test_s3_image_job_status=test_s3_image_job["status"],
        )
        if openqa_job_id:
            report_openqa = dict(
                openqa_job_id=openqa_job_id,
            )
        else:
            report_openqa = None
        return report_gitlab, report_openqa

    def print_report_text(self, report_gitlab, report_openqa):
        print(TEMPLATE_GITLAB.format(**report_gitlab))
        if report_openqa:
            print(TEMPLATE_OPENQA.format(**report_openqa))
        else:
            print("OpenQA job details could not be found. (Job artifacts were deleted).")


def main():
    """Main entry point."""
    args = argument_parser().parse_args()

    if args.debug:
        logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)

    api = GitlabAPIHelper()
    script = ScriptHelper()

    pipeline = script.find_pipeline(api, args.pipeline, earlier=args.earlier)
    if pipeline["status"] == "running":
        raise RuntimeError("Cannot generate report for a running pipeline.")
    log.debug("Generate pipeline report for pipeline ID %s", pipeline["id"])

    report_gitlab, report_openqa = script.generate_report(api, pipeline)
    script.print_report_text(report_gitlab, report_openqa)


try:
    main()
except RuntimeError as e:
    sys.stderr.write("ERROR: {}\n".format(e))
    sys.exit(1)
