#!/usr/bin/env python3
import os
import sys
import hashlib
from gitlab import Gitlab
from gitlab.mixins import ListMixin

gitlab = Gitlab(os.environ["CI_SERVER_URL"], private_token = os.environ["MIMEAPPS_BOT_TOKEN"])
project = gitlab.projects.get(os.environ["CI_PROJECT_ID"])
mr = project.mergerequests.get(os.environ["CI_MERGE_REQUEST_IID"])

with open(sys.argv[1], "r") as f:
    primary_diff = f.read().strip()

override_comment = ""
with open(sys.argv[2], "r") as f:
    override_diff = f.read().strip()
if len(override_diff) > 0:
    override_comment = f"""\
There are also some mime type associations that would have changed, had the
mime type not been overridden in `files/gnome-mimeapps/quirks.toml`. Please
review these changes to ensure that the manual overrides are not out of date.

```patch
{override_diff}
```
"""

comment = f"""\
This merge request changed the contents of GNOME's
[default mimeapps.list](https://gitlab.gnome.org/GNOME/gnome-session/-/blob/main/data/gnome-mimeapps.list)!
Please review the following changes to ensure that they make sense.

```patch
{primary_diff}
```

{override_comment}

Once this MR is merged, the CI pipeline will automatically open an MR against
gnome-session to propagate these changes there
"""

fingerprint = hashlib.sha256(comment.encode()).hexdigest()
stamp = f"<!-- mimeapps-bot {fingerprint} -->"
comment = f"{stamp}\n\n{comment}"

# First, check for existing open note and update it
for discussion in mr.discussions.list(iterator=True):
    # FIXME: https://github.com/python-gitlab/python-gitlab/issues/3180
    notes = ListMixin.list(discussion.notes)
    note = notes[0]

    if "<!-- mimeapps-bot" in note.body:

        if stamp in note.body:
            print("Note is up to date!")
            exit()

        if not note.resolved:
            note.body = comment
            note.save()
            print("Updated existing unresolved note")
            exit()

# If no open note exists, create one
mr.discussions.create(data={
    'body': comment
})
print("Created a new note")
