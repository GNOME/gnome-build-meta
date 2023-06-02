GNOME Build Metadata
====================
The GNOME Build Metadata repository is where the GNOME release team manages
build metadata for building the GNOME software stack.

The content of this repository is a `BuildStream <https://wiki.gnome.org/Projects/BuildStream>`_
project. Instructions for building GNOME can be `found here <https://wiki.gnome.org/Newcomers/BuildSystemComponent>`_.

To build a runtime locally, for debugging:
::
  $ bst build flatpak-runtimes.bst
  $ bst checkout flatpak-runtimes.bst repo
  $ flatpak remote-add --user --no-gpg-verify testrepo repo
  $ flatpak install testrepo org.gnome.Platform


To update the refs you can use Toolbox along with the script in ``utils/update-refs.py`` and
git push options to create a merge request.
::
  $ toolbox create -i registry.gitlab.com/freedesktop-sdk/infrastructure/freedesktop-sdk-docker-images/bst2
  $ toolbox enter bst2
  $ toolbox run -c bst2 ./utils/update-refs.py --new-branch
  $ git push -o merge_request.create -o merge_request.assign="marge-bot" -o merge_request.remove_source_branch -f origin HEAD
