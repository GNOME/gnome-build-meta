#!/usr/bin/env python3

"""
Pipeline report JUnit

This script provides a report on an OpenQA test run, in JUnit XML format. This
format is used by Gitlab to show test results for a specific merge request.

See: https://docs.gitlab.com/ee/ci/testing/unit_test_reports.html

"""

from datetime import datetime
from typing import Optional, Tuple
from xml.etree import ElementTree as ET
import argparse
import json
import logging
import sys
import urllib.request


log = logging.getLogger()


def argument_parser():
    parser = argparse.ArgumentParser(
        description="Pipeline report JUnit")
    parser.add_argument('--debug', dest='debug', action='store_true',
                        help="Enable detailed logging to stderr")
    parser.add_argument('job_id', type=int, nargs='+',
                        help="OpenQA job IDs to report on")
    return parser



class JUnitXMLGenerator:
    """Generate JUnit XML report from an intermediate format.

    Reference for the JUnit XML format:

      * https://github.com/windyroad/JUnit-Schema/blob/master/JUnit.xsd

    """
    def generate_xml(self, fd, test_suites):
        """Write a JUnit XML document to `fd`, based on `testsuites`.

        Example input:

            {
                "Testsuite 1": [
                    {
                        "name": "Testcase 1",
                        "classname": "Testcase 1",
                        "time": 12,
                        "failure": {
                            "type": "failure",
                            "message": "This one failed for some reason",
                        }
                    }
                ]
            }
        """

        testsuites = ET.Element('testsuites')

        for suite_name, test_results in test_suites.items():
            failures = [t for t in test_results if "failure" in t]
            skipped = [t for t in test_results if "skipped" in t]

            testsuite = ET.SubElement(testsuites, 'testsuite')
            testsuite.set('name', suite_name)
            testsuite.set('tests', str(len(test_results)))
            testsuite.set('failures', str(len(failures)))
            testsuite.set('errors', '0')
            testsuite.set('skipped', str(len(skipped)))

            for result in test_results:
                testcase = ET.SubElement(testsuite, 'testcase')
                testcase.set('name', result['name'])
                testcase.set('classname', result['classname'])
                if "time" in result:
                    testcase.set('time', str(result['time']))

                if 'failure' in result:
                    failure = ET.SubElement(testcase, 'failure')
                    failure.set('message', result['failure']['message'])
                    failure.set('type', result['failure']['type'])
                    failure.text = result['failure']['message']
                elif 'skipped' in result:
                    skipped = ET.SubElement(testcase, 'skipped')
                    skipped.set('message', result['skipped']['message'])

        tree = ET.ElementTree(testsuites)
        tree.write(fd, encoding='unicode')


class OpenqaAPIHelper():
    def get_job_details(self, job_id):
        url = f"https://openqa.gnome.org/api/v1/jobs/{job_id}/details"
        with urllib.request.urlopen(url) as response:
            body = response.read()
            return json.loads(body)


def parse_openqa_test_execution_time(execution: Optional[str]) -> Optional[float]:
    if execution is None:
        return None

    parts = execution.split(" ")
    if len(parts) == 2:
        time_format = "%Mm %Ss"  # Example: "1m 2s"
        parsed_time = datetime.strptime(execution, time_format)
    elif len(parts) == 1:
        if parts[0].endswith('m'):
            time_format = "%Mm"  # Example: "1m"
        else:
            time_format = "%Ss"  # Example: "2s"
        parsed_time = datetime.strptime(execution, time_format)
    else:
        raise ValueError(f"Unsupported time format: {execution}")

    return parsed_time.minute * 60 + parsed_time.second


def find_failed_test_message(test_details: dict) -> str:
    for step in test_details["details"]:
        if step.get("title") == "Failed":
            return step["text_data"]
    return "<unknown>"


def openqa_job_details_to_junit_testsuite_report(job_details) -> Tuple[str, dict]:
    testsuite_name = job_details["job"]["test"]
    testsuite = []
    for details in job_details["job"]["testresults"]:
        test_name = details["name"]
        test_result = details["result"]
        test = {
            "name": test_name,
            "classname": testsuite_name,
        }

        execution_time = parse_openqa_test_execution_time(details["execution_time"])
        if execution_time:
            test["time"] = execution_time

        if test_result == "none":
            test["skipped"] = dict(message="Earlier test failed")
        elif test_result == "failed":
            test["failure"] = dict(
                type="failure",
                message=find_failed_test_message(details)
            )
        testsuite.append(test)

    return testsuite_name, testsuite


def main():
    args = argument_parser().parse_args()

    if args.debug:
        logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)

    api = OpenqaAPIHelper()
    junit_test_results = {}
    for job_id in args.job_id:
        details = api.get_job_details(job_id)

        testsuite_name, testsuite = openqa_job_details_to_junit_testsuite_report(details)
        junit_test_results[testsuite_name] = testsuite

    writer = JUnitXMLGenerator()
    writer.generate_xml(sys.stdout, junit_test_results)

try:
    main()
except RuntimeError as e:
    sys.stderr.write("ERROR: {}\n".format(e))
    sys.exit(1)
