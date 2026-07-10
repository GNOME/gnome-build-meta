# Contributing to the GNOME OCI images

This guide covers the OCI-image-specific parts of contributing. Read the [contribution guide](../CONTRIBUTING.md) first for the general setup.

We provide OCI images that are as close as possible to the other formats we pack images into (Flatpak, DDIs). This is done because sometimes it's easier to leverage existing OCI tooling for certain tasks. Unlike our other images, the OCI images are not "supported" in the same ways and only exist for testing and development. They are not meant to be used for any kind of deployment.

They are built and pushed to the container registry [quay.io](https://quay.io/repository/gnome_infrastructure/gnome-build-meta?tab=tags&tag=latest) through the CI job `deploy-oci`.

The goals of the GNOME OCI images are:

- Make it possible to test parts of the stack with OCI tooling
  - e.g. sometimes it's easier to run a GNOME OS container image rather than a whole VM
  - e.g. weird behavior in a library that shows up in the runtime, but it's easier to test and debug the library with Toolbox rather than adding modules to the Flatpak manifest

- Make it possible to develop parts of the stack with the image
  - Develop a module against GNOME OS from any system that has an OCI runtime
  - Can be used as the CI image (directly or extended with ci-templates)

Deploying applications against the images is a non-goal. We have Flatpak and Flathub.

These OCI images are currently available (see also the [published build outputs](./ci-outputs.md)):

- Platform: Mirror of the `org.gnome.Platform` Flatpak runtime
- Sdk: Mirror of the `org.gnome.Sdk` Flatpak runtime
  - Includes the Docs extension
  - Includes the Debug extension (until we have debuginfod)
  - Toolbox-compatible
- GNOME OS: Mirror of the OS `/usr` tree
  - Includes locales
  - Toolbox-compatible
  - `bootc`-compatible
- GNOME OS Devel: The development system extension on top of the OS image
  - Includes locales
  - Includes docs
  - Includes debug symbols (until we have debuginfod)
  - Toolbox-compatible
  - `bootc`-compatible

## 1. Building the OCI images locally

First, build the elements:

```bash
bst build oci/platform/image.bst oci/sdk/image.bst oci/gnomeos/image.bst oci/gnomeos-devel/image.bst
```

Then import them into Podman:

```bash
bst artifact checkout --tar - oci/platform/image.bst | podman load
bst artifact checkout --tar - oci/sdk/image.bst | podman load
bst artifact checkout --tar - oci/gnomeos/image.bst | podman load
bst artifact checkout --tar - oci/gnomeos-devel/image.bst | podman load
```

## 2. Using the locally built OCI images with Toolbox/Distrobox

You can use the container images with [Toolbox](https://github.com/containers/toolbox) or [Distrobox](https://distrobox.it/) as an easy way to create containers.

To create a toolbox from an image:

```bash
toolbox create gnomeos-nightly -i quay.io/gnome_infrastructure/gnome-build-meta:gnomeos-devel-nightly
toolbox enter gnomeos-nightly
```

Note that Toolbox containers are updated using an update mechanism inside the container that will directly modify the container filesystem. GNOME OS does not have such a mechanism. When used in combination with Toolbox you will need to re-create the container if you want to update it and the toolchain it includes.

While some of the OCI images are compatible with `bootc`, it's not a supported distribution channel. This is only for testing reasons and there are no plans of supporting a GNOME OS `bootc` image.

We think [Discoverable Disk Images](https://uapi-group.org/specifications/specs/discoverable_disk_image/) and systemd are a better fit for our use case and requirements. The only supported channel is and will remain the DDI images found in `elements/gnomeos`. More details on the subject can be found in this [thread](https://discourse.gnome.org/t/why-did-gnome-os-choose-systemd-sysupdate-over-bootc/24642/2).

To generate and test a bootc image you will need the following:

```bash
./utils/generate-bootc-image.sh gnomeos /tmp
./utils/run-secure-vm.sh --image /tmp/bootable.img
```

See the [GNOME OS contribution guide](./contributing-os.md) for more information on `./utils/run-secure-vm.sh`.

## 3. Opening a merge request with your changes

See [Opening a merge request with your changes](../CONTRIBUTING.md#4-opening-a-merge-request-with-your-changes).
