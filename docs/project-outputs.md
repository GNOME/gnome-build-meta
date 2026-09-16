# Outputs

This document records the individual outputs of the gnome-build-meta project.

## Key output Elements

Majority of the outputs of the gnome-build-meta project come directly from the outputs of individual BuildStream elements.

The table below summarises the key output elements for the gnome-build-meta project. It's worth noting that every element produces some sort of output, that feed into these key elements.

See [Contributing](contributing.md) for details on how to use these elements.

| Element                                 | Output                                 | Description                                                                                                                        |
| --------------------------------------- | -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| `gnomeos/live-image.bst`                | GNOME OS ISO                           | Bootable live ISO image of GNOME OS                                                                                                |
| `gnomeos/update-images.bst`             | GNOME OS update images                 | Complete collection of sysupdate images for updating and extending GNOME OS                                                        |
| `gnomeos/<extension-name>/image.bst`    | sysupdate extension image for GNOME OS | Provides the `devel`,  `codecs-extra`,  `nvidia-driver`, `debug`, & `snapd` etc GNOME OS system extensions                         |
| `gnomeos/<extension-name>/manifest.bst` | Manifest for the extension images      | Provides a manifest for the extensions                                                                                             |
| `oci/platform/image.bst`                | GNOME platform OCI image               | Mirror of the `org.gnome.Platform` Flatpak runtime                                                                                 |
| `oci/sdk/image.bst`                     | GNOME SDK OCI image                    | Mirror of the `org.gnome.Sdk` Flatpak runtime                                                                                      |
| `oci/gnomeos/image.bst`                 | GNOME OS OCI image                     | Mirror of the OS `/usr` tree                                                                                                       |
| `oci/gnomeos-devel/image.bst`           | GNOME OS devel OCI image               | The development system extension on top of the OS image                                                                            |
| `flatpak/runtimes-repo.bst`             | GNOME Flatpak Runtime                  | Provides the `org.gnome.Sdk` `org.gnome.Platform` flatpak runtimes                                                                 |
| `flatpak/extensions-repo.bst`           | GNOME Flatpak extensions runtime       | Provides the `org.gnome.Sdk.Debug`, `org.gnome.Sdk.Docs`, `org.gnome.Platform.Locale`, arch-compat layers, etc. runtime extensions |
| `flatpak/platform/manifest.bst`         | Manifest for the GNOME platform        | Provides a manifest of the  `org.gnome.Platform` flatpak runtime                                                                   |
| `flatpak/sdk/manifest.bst`              | Manifest for the GNOME SDK             | Provides a manifest of the  `org.gnome.Sdk` flatpak runtime                                                                        |

## Other Outputs

These outputs are produced outside of buildstream, by other scripts.

| Output        | command                            | Description                                 |
| ------------- | ---------------------------------- | ------------------------------------------- |
| CVE report    | `.gitlab-ci/scripts/cve-report.sh` | Generates CVE reports for each manifest     |
| Documentation | `mdbook`       | Generated the documentation for the website |
