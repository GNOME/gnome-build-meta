#! /bin/bash

set -eu

# bst_sourcedir="$HOME/.cache/buildstream/sources"
bst_sourcedir="/cache/buildstream/sources/"
git_path="$bst_sourcedir/git_repo/"

du -hs "$git_path"

for d in $(ls "$git_path"); do
    # [ -d "$git_path/$d" ] && echo "$git_path/$d" && git -C "$git_path/$d" maintenance register;
    [ -d "$git_path$d" ]
    echo "Garbage Collecting $git_path$d"
    git -C "$git_path$d" gc &> /dev/null
done

du -hs "$git_path"
