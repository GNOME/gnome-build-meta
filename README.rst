.. image:: https://img.shields.io/badge/Release--contents-CVE%20Reports-blue?labelColor=grey&color=green
   :target: https://gnome.pages.gitlab.gnome.org/gnome-build-meta/release-contents.html
   :alt: CVE reports

GNOME Build Metadata
====================

The GNOME Build Metadata repository is where the GNOME release team manages
build metadata for building the GNOME software stack.

The content of this repository is a `BuildStream <https://www.buildstream.build/>`_
project. Instructions for building GNOME can be found below in the "GNOME OS" section.

Updating the refs
-----------------

To update the refs you can use Toolbox along with the script in ``.gitlab-ci/scripts/update-refs.py`` and
git push options to create a merge request.
::
  $ toolbox create -i registry.gitlab.com/freedesktop-sdk/infrastructure/freedesktop-sdk-docker-images/bst2
  $ toolbox run -c bst2 ./.gitlab-ci/scripts/update-refs.py --new-branch
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

To build the GNOME OS ISO installer  locally:

1. Generate keys::

      $ make -C files/boot-keys clean
      $ make -C files/boot-keys

2. Build the image::

      $ bst build gnomeos/live-image.bst

3. Checkout image::

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

Build OCI images locally:

1. Build the elements::

      $ bst build build oci/platform.bst oci/sdk.bst oci/core.bst

2. Import them into Podman::

      $ bst artifact checkout --tar - oci/platform.bst | podman load
      $ bst artifact checkout --tar - oci/sdk.bst | podman load
      $ bst artifact checkout --tar - oci/core.bst | podman load

3. (Optional) Create a toolbox from the core image::

      $ bst artifact checkout --tar - oci/core.bst | podman load
      $ toolbox create core-nightly -i quay.io/gnome_infrastructure/gnome-build-meta:core-nightly
      $ toolbox enter core-nightly

Continuous Integration
----------------------

The following is a summary of what is being exported by this repository CI pipelines:

.. list-table::
   :header-rows: 1

   * - Output
     - When
     - Example
   * - Flatpak runtimes (master)
     - Merged to master
     - :code:`flatpak install flathub org.gnome.Platform//master`
   * - Flatpak runtimes (beta)
     - Merged to stable branch (and flagged as "beta")
     - :code:`flatpak install flathub-beta org.gnome.Platform//47beta`
   * - Flatpak runtimes (stable)
     - Merged to stable branch
     - :code:`flatpak install flathub org.gnome.Platform//46`
   * - GNOME OS installer and disks images (latest)
     - Merged to master (and tests passed or ran manually)
     - :code:`wget https://os.gnome.org/download/latest/gnome_os_installer.iso`
   * - GNOME OS installer and disks images (stable)
     - On tag added
     - :code:`wget https://os.gnome.org/download/stable/47/gnome_os_installer_x86_64.iso`
   * - OCI Images (latest, master and nightly)
     - Merged to master
     - :code:`podman pull quay.io/gnome_infrastructure/gnome-build-meta:core-nightly`
   * - OCI Images (stable)
     - On tag added
     - :code:`podman pull quay.io/gnome_infrastructure/gnome-build-meta:core-47`

Build for different architectures
~~~~~~~~

It's possible to build for another architecture using BuildStream and Qemu

This can be combined with the toolbox image we use for bst2 as it
has qemu and everything else needed.

1. Open Workspace for the element you need (Optional)::

      $ toolbox enter bst2
      $ bst workspace open --no-checkout sdk/gjs.bst --directory ~/Projects/gjs/

2. Build the element::

      $  bst -o arch aarch64 build sdk/gjs.bst

3. Get a build or runtime shell for testing::
      $  bst -o arch aarch64 build --shell sdk/gjs.bst
      $  bst -o arch aarch64 shell sdk/gjs.bst

