import json
import urllib.request
import os
from contextlib import contextmanager
import datetime
import zipfile
import tempfile

class token_handler(urllib.request.BaseHandler):
    def __init__(self, tokens):
        self._tokens = tokens

    def http_request(self, req):
        if req.host in self._tokens:
            req.add_unredirected_header('PRIVATE-TOKEN', self._tokens[req.host])
        return req

    https_request = http_request

tokens = {}
job_token = os.environ.get('CI_JOB_TOKEN')
if job_token:
    tokens['gitlab.gnome.org'] = job_token

opener = urllib.request.build_opener(token_handler(tokens))
urllib.request.install_opener(opener)

project_id = os.environ.get('CI_PROJECT_ID', '456')
base_url = f'https://gitlab.gnome.org/api/v4/projects/{project_id}'

@contextmanager
def download(path, **kwargs):
    with urllib.request.urlopen(f'{base_url}/{path}') as resp:
        yield resp

def call(path, **kwargs):
    query = urllib.parse.urlencode(kwargs)
    with download(path, **kwargs) as resp:
        return json.load(resp)

found = []
for schedule in call('pipeline_schedules'):
    id = schedule.get('id')
    if id:
        schedule = call(f'pipeline_schedules/{id}')
        if schedule.get('ref') != 'master':
            continue
        if not schedule.get('active'):
            continue
        for var in schedule.get('variables', []):
            if var.get('variable_type') == 'env_var' and \
               var.get('key') == 'BST_STRICT' and \
               var.get('value') == '--strict':
                found.append(schedule)

def get_last_build(schedule):
    up = schedule.get('updated_at')
    if up:
        return datetime.datetime.strptime(up, "%Y-%m-%dT%H:%M:%S.%fZ")
    else:
        return datetime.datetime(1970, 1, 1, tzinfo=datetime.timezone.utc)

found = sorted(found, key=get_last_build)
last_pipeline = found[0].get('last_pipeline', {}).get('id')

found_job = None
for job in call(f'pipelines/{last_pipeline}/jobs'):
    if job.get('name') == 'track':
        found_job = job.get('id')
        break

job = call(f'jobs/{found_job}')

with tempfile.TemporaryFile() as temp:
    with download(f'jobs/{found_job}/artifacts') as resp:
        while True:
            data = resp.read(4096)
            if not data:
                break
            temp.write(data)
    temp.seek(0, 0)
    with zipfile.ZipFile(temp) as zip:
        with zip.open('project.refs') as refs:
            with open('project.refs', 'wb') as local_refs:
                while True:
                    data = refs.read(4096)
                    if not data:
                        break
                    local_refs.write(data)
            with open('project.refs.commit', 'w') as commit:
                commit.write(job.get('commit', {}).get('id'))
                commit.write('\n')
