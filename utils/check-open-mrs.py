#! /usr/bin/env python3

import requests
import os

def check_for_existing_mr():
  headers = {'JOB_TOKEN': os.environ["CI_JOB_TOKEN"] }

  # FIXME:
  url = f"https://gitlab.gnome.org/api/v4/projects/456/merge_requests?author_username=bertob&state=opened"

  resp = requests.get(url, headers=headers)
  print(resp.json())
  resp.raise_for_status()

  if resp.json():
    print("There's an existing MR already. Exiting!")
    exit(1)
