OCI Images
===

We provide OCI images that are as close as possible to the other format we pack images into (Flatpak, DDIs). This is done cause sometimes its easier to leverage existing OCI tooling for certain tasks. Unlike our other images, the OCI images are not "Supported" in the same ways and only exist for testing and development. They are not meant to be used for any kind of deployments.

They are built and pushed to the (container registry [quay.io)](https://quay.io/repository/gnome_infrastructure/gnome-build-meta?tab=tags&tag=latest) through the CI job
`deploy-oci`.

## Goals of the images:

- Make it possible to test parts of the stack with OCI tooling
  - ex. Sometimes it's easier to run a GNOME OS container image rather than a whole VM
  - ex. Weird behavior in a library that shows up in the Runtime, but its easier to test and debug the library with toolbox rather than adding modules to the Flatpak manifest

- Make it possible to develop parts of the stack with the image
  - Develop a module against gnomeos from any system that has an OCI runtime
  - Can be used as the CI image (directly or extended with ci-templates)

## Non-goals:

- Deploy applications against the images. We have Flatpak and Flathub.

## Images

- Platform: Mirror of the org.gnome.Platform Flatpak Runtime
- Sdk: Mirror of the org.gnome.Sdk Flatpak Runtime
    - Includes Docs Extension
    - Includes Debug Extension (Until we have debuginfod)
    - Toolbox compatible
- GNOME OS: Mirror of the OS /usr tree
    - Includes Locales
    - Toolbox compatible
- GNOME OS Devel: The Development System Extension on top of the OS image
    - Includes Locales
    - Includes Docs
    - Includes Debug Symbols (Until we have debuginfod)
    - Toolbox compatible

## Build OCI images locally:

1. Build the elements

    ```bash
    bst build oci/platform.bst oci/sdk.bst oci/gnomeos.bst oci/gnomeos-devel.bst
    ```

2. Import them into Podman:

    ```bash
    bst artifact checkout --tar - oci/platform.bst | podman load
    bst artifact checkout --tar - oci/sdk.bst | podman load
    bst artifact checkout --tar - oci/gnomeos.bst | podman load
    bst artifact checkout --tar - oci/gnomeos-devel.bst | podman load
    ```

## Use with Toolbox/distrobox

You can use the container images with toolbox or distrobox as an easy way to create containers.

1. Import the local build of the image:

    ```bash
    bst artifact checkout --tar - oci/gnomeos-devel.bst | podman load
    ```

2. Create a toolbox from an image:

    ```bash
    toolbox create gnomeos-nightly -i quay.io/gnome_infrastructure/gnome-build-meta:gnomeos-devel-nightly
    toolbox enter gnomeos-nightly
    ```

## Caveats

Toolbox containers are updated using an update mechanism inside the container that will directly modify the container filesystem. GNOME OS does not have such mechanism. When used in combination with Toolbox you will need to re-create the container if you want to update it and the toolchain it includes.
