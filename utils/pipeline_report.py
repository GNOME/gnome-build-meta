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
import urllib.parse
from zipfile import ZipFile

import requests
from requests.exceptions import HTTPError
import yaml

log = logging.getLogger()


API_BASE = "https://gitlab.gnome.org/api/v4/"


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
        "--element",
        type=str,
        action="append",
        dest="elements",
        metavar="PATH",
        help="Report on BuildStream element at PATH in the gnome-build-meta "
             "repo `elements/` directory. Example: `sdk/gtk.bst`",
    )
    parser.add_argument(
        "--project",
        default="gnome/gnome-build-meta",
        help="Gitlab project that ran the OpenQA pipeline. Default: %(default)s",
    )
    parser.add_argument(
        "pipeline",
        nargs="?",
        help="Pipeline ID. Leave empty for latest pipeline on default branch."
    )
    return parser


class NotFoundError(Exception):
    pass


class GitlabAPIHelper:
    def __init__(self, project):
        self._project = urllib.parse.quote(project, safe=[])

    def _json(self, url, params=None):
        response = requests.get(url, params=params)
        response.raise_for_status()
        return response.json()

    def _binary(self, url, params=None):
        response = requests.get(url, params=params)
        if response.status_code == 404:
            raise NotFoundError()
        response.raise_for_status()
        return BytesIO(response.content)

    def query_latest_pipeline(self):
        # Get latest pipeline for default project branch ('master').
        return self._json(f"{API_BASE}/projects/{self._project}/pipelines/latest")

    def query_pipeline(self, pipeline_id):
        return self._json(f"{API_BASE}/projects/{self._project}/pipelines/{pipeline_id}")

    def list_pipelines(self, ref=None, updated_before=None):
        return self._json(
            f"{API_BASE}/projects/{self._project}/pipelines",
            params=dict(ref=ref, updated_before=updated_before),
        )

    def query_pipeline_jobs(self, pipeline_id):
        return self._json(
            f"{API_BASE}/projects/{self._project}/pipelines/{pipeline_id}/jobs"
        )

    def query_job_log(self, job_id):
        return self._json(f"{API_BASE}/projects/{self._project}/jobs/{job_id}/trace")

    def query_job_artifacts(self, job_id):
        return self._binary(f"{API_BASE}/projects/{self._project}/jobs/{job_id}/artifacts")

    def fetch_repository_file(self, ref, path) -> str:
        path_encoded = urllib.parse.quote(path, safe=[])
        return self._binary(
            f"{API_BASE}/projects/{self._project}/repository/files/{path_encoded}/raw",
            params=dict(ref=ref)
        ).read().decode()


class OpenqaAPIHelper():
    def get_job_details(self, job_id):
        url = f"https://openqa.gnome.org/api/v1/jobs/{job_id}/details"
        response = requests.get(url)
        response.raise_for_status()
        return response.json()


def find_in_list(l, predicate, error_text):
    for item in l:
        if predicate(item):
            return item
    raise RuntimeError(error_text)


TEMPLATE_GITLAB = """
Project:

  * Repo: {gitlab_project}
  * Commit: {gitlab_repo_commit_id}
  * Commit date: {gitlab_repo_commit_date}
  * Commit title: {gitlab_repo_commit_title}

Integration tests status (Gitlab):

  * Pipeline: https://gitlab.gnome.org/{gitlab_project}/-/pipelines/{gitlab_pipeline_id}
  * test-s3-image job: https://gitlab.gnome.org/{gitlab_project}/-/jobs/{gitlab_job_id}
  * test-s3-image job status: {gitlab_job_status}
  * test-s3-image job finished at: {gitlab_job_finished_at}"""

TEMPLATE_OPENQA = """
Integration tests status (OpenQA):

{openqa_jobs}
"""


class ScriptHelper:
    def find_pipeline(self, api, project, pipeline_id=None, earlier=None, ref='master'):
        """Find the right pipeline based on the commandline options."""
        if pipeline_id:
            pipeline = api.query_pipeline(pipeline_id)
        else:
            pipeline = api.query_latest_pipeline()
            print(f"Latest {project} pipeline on default branch is {pipeline['id']}. Pipeline status: {pipeline['status']}")
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
            print(f"Pipeline {earlier} steps earlier than {pipeline['id']} is {earlier_pipeline['id']}. Pipeline status: {earlier_pipeline['status']}")
            return earlier_pipeline
        return pipeline

    def find_test_s3_image_job(self, api: GitlabAPIHelper, pipeline: dict) -> dict:
        """Find the Gitlab job that triggered the OpenQA test suite."""
        jobs = api.query_pipeline_jobs(pipeline["id"])
        test_s3_image_job = find_in_list(
            jobs,
            lambda item: item["name"] == "test-s3-image",
            "Couldn't find test-s3-image job",
        )
        test_s3_image_job_id = test_s3_image_job["id"]
        log.debug("Found test-s3-image job with ID %s", test_s3_image_job_id)
        return test_s3_image_job

    def generate_gitlab_report(self, api: GitlabAPIHelper, project: str, pipeline: dict, job: dict) -> dict:
        """Generate the report for a specific Gitlab pipeline."""
        return dict(
            gitlab_project=project,
            gitlab_repo_ref=pipeline["ref"],
            gitlab_repo_commit_id=pipeline["sha"],
            gitlab_repo_commit_date=job["commit"]["created_at"],
            gitlab_repo_commit_title=job["commit"]["title"],
            gitlab_pipeline_id=pipeline["id"],
            gitlab_job_id=job["id"],
            gitlab_job_finished_at=job["finished_at"],
            gitlab_job_status=job["status"],
        )

    def generate_openqa_report(self, gitlab_api: GitlabAPIHelper, pipeline: dict, job: dict) -> dict:
        try:
            artifacts_zip = gitlab_api.query_job_artifacts(job["id"])
            with ZipFile(artifacts_zip, "r") as z:
                with z.open("openqa.log") as f:
                    openqa_status_line = f.readline().decode()
                    if openqa_status_line.startswith("Calling 'POST isos'"):
                        openqa_status_line = f.readline().decode()
            openqa_status = json.loads(openqa_status_line)
            openqa_job_ids = openqa_status["ids"]
        except NotFoundError:
            log.info("Job artifacts not found")
            return None

        openqa_api = OpenqaAPIHelper()
        job_infos = []
        for job_id in openqa_job_ids:
            job_details = openqa_api.get_job_details(job_id)["job"]
            all_tests = job_details["testresults"]
            passed_tests = [t for t in all_tests if t["result"] == "passed"]
            failed_tests = [t for t in all_tests if t["result"] == "failed"]
            skipped_tests = [t for t in all_tests if t["result"] == "none"]
            job_infos.append(dict(
                job_id=job_id,
                testsuite=job_details["test"],
                tests_passed_count=len(passed_tests),
                tests_total_count=len(all_tests),
                failed_test_names=[t["name"] for t in failed_tests]
            ))

        return {
            "openqa_job_infos": job_infos
        }

    def generate_elements_report(self, api: GitlabAPIHelper, sha: str, elements=[]) -> dict:
        report = {}
        for element_path in elements:
            try:
                element_yaml = api.fetch_repository_file(ref=sha, path="elements/" + element_path)
                element = yaml.safe_load(element_yaml)
                report[element_path] = dict(
                    first_source_version=element["sources"][0]["ref"]
                )
            except NotFoundError:
                report[element_path] = dict(
                    first_source_version="Not found"
                )
        return report

    def format_openqa_job(self, job_info):
        lines = [
          "  * {testsuite} testsuite - job URL: https://openqa.gnome.org/tests/{job_id}".format(**job_info),
          "    * {tests_passed_count}/{tests_total_count} tests passed".format(**job_info)
        ]
        if len(job_info["failed_test_names"]) > 0:
            failed_tests = ", ".join(job_info["failed_test_names"])
            lines.append(f"    * Failed: {failed_tests}")
        return "\n".join(lines)

    def print_report_text(self, report_gitlab, report_openqa, report_elements):
        print(TEMPLATE_GITLAB.format(**report_gitlab))
        if report_openqa:
            openqa_jobs = "\n".join(
                self.format_openqa_job(job_info)
                for job_info in report_openqa["openqa_job_infos"]
            )
            print(TEMPLATE_OPENQA.format(openqa_jobs=openqa_jobs))
        else:
            print("OpenQA job details could not be found. (Job artifacts were deleted).")
        if report_elements:
            print("Elements:\n")
            for element_path, element in report_elements.items():
                print(f"  * {element_path}: {element['first_source_version']}")


def main():
    """Main entry point."""
    args = argument_parser().parse_args()

    if args.debug:
        logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)

    api = GitlabAPIHelper(args.project)
    script = ScriptHelper()

    pipeline = script.find_pipeline(api, args.project, args.pipeline, earlier=args.earlier)
    if pipeline["status"] == "running":
        raise RuntimeError("Cannot generate report for a running pipeline.")
    log.debug("Generate pipeline report for pipeline ID %s", pipeline["id"])

    job = script.find_test_s3_image_job(api, pipeline)

    report_gitlab = script.generate_gitlab_report(api, args.project, pipeline, job)
    report_openqa = script.generate_openqa_report(api, pipeline, job)
    report_elements = script.generate_elements_report(api, sha=pipeline["sha"], elements=args.elements or [])
    script.print_report_text(report_gitlab, report_openqa, report_elements)


try:
    main()
except RuntimeError as e:
    sys.stderr.write("ERROR: {}\n".format(e))
    sys.exit(1)
