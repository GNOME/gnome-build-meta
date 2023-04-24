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
    parser.add_argument("pipeline", nargs="?")
    return parser


class GitlabAPIHelper:
    def _json(self, url):
        response = requests.get(url)
        response.raise_for_status()
        return response.json()

    def _binary(self, url):
        response = requests.get(url)
        response.raise_for_status()
        return BytesIO(response.content)

    def query_latest_pipeline(self):
        return self._json(f"{API_BASE}/projects/{PROJECT_ID}/pipelines/latest")

    def query_pipeline(self, pipeline_id):
        return self._json(f"{API_BASE}/projects/{PROJECT_ID}/pipelines/{pipeline_id}")

    def query_pipeline_jobs(self, pipeline_id):
        return self._json(
            f"{API_BASE}/projects/{PROJECT_ID}/pipelines/{pipeline_id}/jobs"
        )

    def query_job_log(self, job_id):
        return self._json(f"{API_BASE}/projects/{PROJECT_ID}/jobs/{job_id}/trace")

    def query_job_artifacts(self, job_id):
        return self._binary(f"{API_BASE}/projects/{PROJECT_ID}/jobs/{job_id}/artifacts")


def find_in_list(l, predicate, error_text):
    for item in l:
        if predicate(item):
            return item
    raise RuntimeError(error_text)


def generate_report(api: GitlabAPIHelper, pipeline: dict) -> dict:
    """Generate the report for a specific pipeline."""
    jobs = api.query_pipeline_jobs(pipeline["id"])
    test_s3_image_job = find_in_list(
        jobs,
        lambda item: item["name"] == "test-s3-image",
        "Couldn't find test-s3-image job",
    )
    test_s3_image_job_id = test_s3_image_job["id"]
    log.debug("Found test-s3-image job with ID %s", test_s3_image_job_id)

    artifacts_zip = api.query_job_artifacts(test_s3_image_job_id)
    with ZipFile(artifacts_zip, "r") as z:
        with z.open("openqa.log") as f:
            openqa_status_line = f.readline().decode()
    openqa_status = json.loads(openqa_status_line)
    openqa_job_id = openqa_status["ids"][0]

    report = dict(
        gnome_build_meta_ref=pipeline["ref"],
        gnome_build_meta_commit_id=pipeline["sha"],
        gnome_build_meta_commit_date=test_s3_image_job["commit"]["created_at"],
        gnome_build_meta_commit_title=test_s3_image_job["commit"]["title"],
        gitlab_pipeline_id=pipeline["id"],
        gitlab_test_s3_image_job_id=test_s3_image_job_id,
        gitlab_test_s3_image_job_finished_at=test_s3_image_job["finished_at"],
        gitlab_test_s3_image_job_status=test_s3_image_job["status"],
        openqa_job_id=openqa_job_id,
    )
    return report


TEMPLATE = """
# GNOME OpenQA testing report

Repo: gnome-build-meta
Commit: {gnome_build_meta_commit_id}
Commit date: {gnome_build_meta_commit_date}
Commit title: {gnome_build_meta_commit_title}

Pipeline: https://gitlab.gnome.org/gnome/gnome-build-meta/-/pipelines/{gitlab_pipeline_id}
test-s3-image job: https://gitlab.gnome.org/gnome/gnome-build-meta/-/jobs/{gitlab_test_s3_image_job_id}
test-s3-image job status: {gitlab_test_s3_image_job_status}
test-s3-image job finished at: {gitlab_test_s3_image_job_finished_at}

OpenQA job: https://openqa.gnome.org/tests/{openqa_job_id}
"""


def print_report_text(report):
    print(TEMPLATE.format(**report))


def main():
    """Main entry point."""
    args = argument_parser().parse_args()

    if args.debug:
        logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)

    api = GitlabAPIHelper()

    if args.pipeline:
        pipeline_id = args.pipeline
        pipeline = api.query_pipeline(pipeline_id)
    else:
        pipeline = api.query_latest_pipeline()
        pipeline_id = pipeline["id"]
        print(f"Latest pipeline is {pipeline_id}. Status: {pipeline['status']}")
        if pipeline["status"] == "running":
            raise RuntimeError("Cannot generate report for a running pipeline.")
    log.debug("Generate pipeline report for pipeline ID %s", pipeline_id)

    report = generate_report(api, pipeline)
    print_report_text(report)


try:
    main()
except RuntimeError as e:
    sys.stderr.write("ERROR: {}\n".format(e))
    sys.exit(1)
