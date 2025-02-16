.. image:: https://img.shields.io/badge/Release--contents-CVE%20Reports-blue?labelColor=grey&color=green
   :target: https://gnome.pages.gitlab.gnome.org/gnome-build-meta/release-contents.html
   :alt: CVE reports

GNOME Build Metadata
====================

The GNOME Build Metadata repository is where the GNOME release team manages
build metadata for building the GNOME software stack.

The content of this repository is a `BuildStream <https://wiki.gnome.org/Projects/BuildStream>`_
project. Instructions for building GNOME can be `found here <https://wiki.gnome.org/Newcomers/BuildSystemComponent>`_.

Updating the refs
-----------------

To update the refs you can use Toolbox along with the script in ``utils/update-refs.py`` and
git push options to create a merge request.
::
  $ toolbox create -i registry.gitlab.com/freedesktop-sdk/infrastructure/freedesktop-sdk-docker-images/bst2
  $ toolbox run -c bst2 ./utils/update-refs.py --new-branch
  $ git push -o merge_request.create -o merge_request.assign="marge-bot" -o merge_request.remove_source_branch -f origin -u HEAD

Build outputs
-------------

Some of the possible build outputs are documented below.

Flatpak runtimes
~~~~~~~~~~~~~~~~

To build a runtime locally, for debugging:
::
  $ bst build flatpak-runtimes.bst
  $ bst checkout flatpak-runtimes.bst repo
  $ flatpak remote-add --user --no-gpg-verify testrepo repo
  $ flatpak install testrepo org.gnome.Platform

GNOME OS
~~~~~~~~

To build the GNOME OS "secure boot" image locally:

1. Generate keys::

      $ make -C files/boot-keys clean
      $ make -C files/boot-keys

2. Build the disk image (first command) or the ISO installer (second command)::

      $ bst build gnomeos/image.bst
      $ bst build gnomeos/live-image.bst

3. Checkout the image or installer::

      $ bst artifact checkout gnomeos/image.bst --directory ./disk
      $ bst artifact checkout gnomeos/live-image.bst --directory ./iso

OCI Images
~~~~~~~~~~

OCI images are built and pushed to the container registry through the CI job
'deploy-oci'. Currently there are three images 'platform', 'sdk' and 'core':

1. platform - the same ``/usr`` tree as the ``org.gnome.Platform`` flatpak runtime

2. sdk - the same as the ``org.gnome.Sdk`` flatpak runtime and ``toolbox`` compatible

3. core - core devel OS tree including the dependencies to build all (most)
   of the 'core' elements in 'core.bst', but without the cli tools and
   utilities (podman, toolbox, bst, etc)

These images can be found in the container registry `quay.io <https://quay.io/repository/gnome_infrastructure/gnome-build-meta?tab=tags&tag=latest>`_.

While they are "toolbox compatible", there isn't any update mechanism in them,
so you should be aware that the containers created locally for development will
become stale and you will need to remove and recreate them with an up to date
image often. Their main usecase is for gitlab-ci which always pulls the latest
image.
