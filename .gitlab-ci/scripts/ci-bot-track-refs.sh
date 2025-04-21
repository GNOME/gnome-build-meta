#! /bin/bash

set -eu

# Setup ssh
eval $(ssh-agent -s)
if [ -z "$BOT_SSH_PRIVATE_KEY" ]; then
    echo "SSH KEY IS EMPTY"
    exit 1
fi

echo "$BOT_SSH_PRIVATE_KEY" | tr -d '\r' | ssh-add -

set -x

mkdir -p ~/.ssh
chmod 700 ~/.ssh

echo "$SSH_SERVER_HOSTKEYS" > ~/.ssh/known_hosts
chmod 644 ~/.ssh/known_hosts
cat ~/.ssh/known_hosts

ssh -Tv git@ssh.gitlab.gnome.org

git config --global user.email "sysadmin@gnome.org"
git config --global user.name "gnome-build-meta-bot"

OPEN_MRS=$(gitlab project-merge-request list --project-id "$CI_PROJECT_ID" --author-id 121419 --state opened)
echo "$OPEN_MRS"
# If the bot has already opened a merge request, abort
if [ -n "$OPEN_MRS" ]; then
  echo "There's already an update MR open by me!"
  exit 0
fi

# Append the sourcedir into the bst config so we don't clone all the sources again
echo -e "\nsourcedir: /cache/buildstream/sources" >> "${CI_PROJECT_DIR}/.gitlab-ci/buildstream.conf"

python3 .gitlab-ci/scripts/update-refs.py --new-branch

git show

git remote set-url --push origin git@ssh.gitlab.gnome.org:GNOME/gnome-build-meta.git

git push -o merge_request.create -o merge_request.assign="marge-bot" -o merge_request.remove_source_branch -f origin HEAD
