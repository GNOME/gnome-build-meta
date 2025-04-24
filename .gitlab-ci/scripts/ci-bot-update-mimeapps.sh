#!/bin/bash

set -eux

git config --global user.email "sysadmin@gnome.org"
git config --global user.name "gnome-build-meta-bot"

if [ "$CI_COMMIT_REF_NAME" == "master" ]; then
    set +x

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

    git clone --depth=1 git@ssh.gitlab.gnome.org:GNOME/gnome-session.git
else
    git clone --depth=1 https://gitlab.gnome.org/GNOME/gnome-session.git
fi

cd gnome-session

if cmp ../gnome-mimeapps.list data/gnome-mimeapps.list; then
    echo "gnome-mimeapps.list didn't change. Nothing to do."
    exit 0;
fi

echo "gnome-mimeapps.list was changed! Please review these changes"

git switch -c gnome-os-bot/update-mimeapps

rm data/gnome-mimeapps.list
cp ../gnome-mimeapps.list data/gnome-mimeapps.list
git add data/gnome-mimeapps.list

git commit -F- <<EOF
Update mimeapps.list

GNOME's default mime type associations changed in
$CI_PROJECT_URL/-/commit/$CI_COMMIT_SHA
EOF

git show

if [ "$CI_COMMIT_REF_NAME" == "master" ]; then
    git push \
        -o merge_request.create \
        -o merge_request.remove_source_branch \
        -f origin HEAD
fi
