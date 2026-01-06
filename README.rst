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
git push options to create a merge request.::

  $ toolbox create -i registry.gitlab.com/freedesktop-sdk/infrastructure/freedesktop-sdk-docker-images/bst2
  $ toolbox run -c bst2 ./.gitlab-ci/scripts/update-refs.py --new-branch
  $ git push -o merge_request.create -o merge_request.assign="marge-bot" -o merge_request.remove_source_branch -f origin -u HEAD

Build outputs
-------------

Some of the possible build outputs are documented below.

Flatpak runtimes
~~~~~~~~~~~~~~~~

To build a runtime locally, for debugging:::

  $ bst build flatpak-runtimes.bst
  $ bst checkout flatpak-runtimes.bst repo
  $ flatpak remote-add --user --no-gpg-verify testrepo repo
  $ flatpak install testrepo org.gnome.Platform

GNOME OS
~~~~~~~~

To build the GNOME OS ISO installer locally:

1. Generate keys::

      $ make -C files/boot-keys install

2. Build the image::

      $ bst build gnomeos/live-image.bst

3. Checkout image::

      $ bst artifact checkout gnomeos/live-image.bst --directory ./iso

OCI Images
~~~~~~~~~~

We provide OCI images for development. See the Readme.md in the oci directory.

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
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

Developing and Modifying components
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to test a local change, you can use workspaces to instruct Buildstream to
build the element from there (If you don't have an existing checkout, omit --no-checkout).::

    $ bst workspace open --no-checkout core/gnome-initial-setup.bst --directory ../gnome-initial-setup/
    $ cd ../gnome-initial-setup/
    $ cat .bstproject.yaml
    projects:
    - project-path: /home/alatiera/Projects/gnome-build-meta
      element-name: core/gnome-initial-setup.bst
    format-version: 1
    $ bst build core/gnome-initial-setup.bst

Afterwards you can drop into a runtime shell with following command::

    $ bst -o toolbox true shell core/gnome-initial-setup.bst
    $ /usr/libexec/gnome-initial-setup

You can also get a build shell to inspect the environment the similarly.
Note that only the specified dependencies are staged. If you need a utility for debugging (vim, strace, etc) you will have to add them as build-dependencies.::

    $ bst shell --build core/gnome-initial-setup.bst

If you are developing on GNOME OS already, you can build systemd-sysext images and overlay them on the system like this:

Note that sysexts are applied alphabetically, so you might want to prefix them in order to avoid being overwritten by other images that will be loaded.::

    $ bst build sdk/gnome-text-editor.bst
    $ sysext-build-element --ignore-release --verbose zz-text-editor sdk/gnome-text-editor.bst
    $ run0 sysext-add --persistent zz-gnome-text-editor.sysext.raw
    $ run0 systemd-sysext refresh

And optionally reload services if applicable to your usecase.::

    $ run0 systemctl daemon-reload

