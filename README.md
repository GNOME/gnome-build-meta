[![CVE reports](https://img.shields.io/badge/Release--contents-CVE%20Reports-blue?labelColor=grey&color=green)](https://gnome.pages.gitlab.gnome.org/gnome-build-meta/release-contents.html)

# GNOME Build Metadata

## Overview

The GNOME Build Metadata repository is where the GNOME release team manages build metadata for building the:

- GNOME OS
- GNOME Flatpak runtimes
- GNOME OCI images for CI

## Getting started

### Using GNOME OS

For an overview of the project, visit the [GNOME OS website](https://os.gnome.org/).

If you want to install GNOME OS, follow the appropriate guide for your device and setup:

- [Typical desktop and laptop computers](docs/install.md)
  - [Dual Booting with another operating system](docs/manual-dual-boot.md) - We don't support this setup, but you can use it at your own risk
- [Phones](docs/phones.md) - Experimental support for OnePlus 6 and Fairphone 5

Be sure to check out the [User Guide](docs/using.md) afterwards.

Quick start: The latest ISO nightly can be downloaded from <https://os.gnome.org/download/latest/gnome_os_x86_64.iso> and restored onto a USB drive

### Using GNOME Flatpak runtimes

If you'd like to **use** GNOME Flatpak runtimes, please head to the [Flatpak documentation on the GNOME runtimes](https://docs.flatpak.org/en/latest/available-runtimes.html#gnome) and [Building a flatpak](https://docs.flatpak.org/en/latest/first-build.html).

Quick start: `flatpak install flathub org.gnome.Sdk//master`

### Using GNOME OCI images

If you'd like to **use** GNOME OCI images, please see the [CI registry at quay.io](https://quay.io/repository/gnome_infrastructure/gnome-build-meta), to understand which images are available see the [Published Build Outputs](docs/ci-outputs.md) and [OCI Contributing](docs/contributing-oci.md).

Quick start: `podman pull quay.io/gnome_infrastructure/gnome-build-meta:gnomeos-nightly`

### Releases

gnome-build-meta tracks the releases of GNOME. See [the GNOME release calendar](https://release.gnome.org/calendar).

### Contributing

To **contribute** to the GNOME Flatpak runtime, GNOME OS or GNOME OCI images, see the [contribution guide](docs/contributing.md) to get started, and the [debugging guide](docs/debugging.md) for common troubleshooting steps.

You can also read the markdown source of the documentation in [docs](./docs/)
