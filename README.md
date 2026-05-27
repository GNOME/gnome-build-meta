[![CVE reports](https://img.shields.io/badge/Release--contents-CVE%20Reports-blue?labelColor=grey&color=green)](https://gnome.pages.gitlab.gnome.org/gnome-build-meta/release-contents.html)

# GNOME Build Metadata

The GNOME Build Metadata repository is where the GNOME release team manages build metadata for building the GNOME Flatpak runtime, GNOME OS, and GNOME OCI images.

## Getting started

If you'd like to **use** GNOME OS, please see the [installation guide](./docs/install.md) and the [user guide](./docs/using.md). For an overview of the project, visit the [GNOME OS website](https://os.gnome.org/).

To **contribute** to the GNOME Flatpak runtime, GNOME OS or GNOME OCI images, see the [contribution guide](./CONTRIBUTING.md) to get started, and the [debugging guide](./docs/debugging.md) for common troubleshooting steps.

## Published build outputs

| Output                                                                                                                                    | When                                                | Example                                                                       |
| ----------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------- | ----------------------------------------------------------------------------- |
| Flatpak `org.gnome.Platform`/`org.gnome.Sdk` runtimes (nightly)                                                                           | Merged to master                                    | `flatpak install flathub org.gnome.Platform//master` / `Sdk//master`          |
| Flatpak `org.gnome.Platform`/`org.gnome.Sdk` runtimes (beta)                                                                              | Merged to stable branch (and flagged as "beta")     | `flatpak install flathub-beta org.gnome.Platform//50beta`                     |
| Flatpak `org.gnome.Platform`/`org.gnome.Sdk` runtimes (stable)                                                                            | Merged to stable branch                             | `flatpak install flathub org.gnome.Platform//50`                              |
| Flatpak extensions (`org.gnome.Sdk.Debug`, `org.gnome.Sdk.Docs`, `org.gnome.Platform.Locale`, arch-compat layers, etc.) (nightly)         | Merged to master                                    | `flatpak install flathub org.gnome.Sdk.Debug//master`                         |
| Flatpak extensions (`org.gnome.Sdk.Debug`, `org.gnome.Sdk.Docs`, `org.gnome.Platform.Locale`, arch-compat layers, etc.) (beta)            | Merged to stable branch (and flagged as "beta")     | `flatpak install flathub-beta org.gnome.Sdk.Debug//50beta`                    |
| Flatpak extensions (`org.gnome.Sdk.Debug`, `org.gnome.Sdk.Docs`, `org.gnome.Platform.Locale`, arch-compat layers, etc.) (stable)          | Merged to stable branch                             | `flatpak install flathub org.gnome.Sdk.Debug//50`                             |
| GNOME OS ISO (nightly Intel & AMD)                                                                                                        | Merged to master (and tests passed or ran manually) | <https://os.gnome.org/download/latest/gnome_os_x86_64.iso>                    |
| GNOME OS ISO (nightly ARM)                                                                                                                | Merged to master (and tests passed or ran manually) | <https://os.gnome.org/download/latest/gnome_os_aarch64.iso>                   |
| GNOME OS ISO (stable Intel & AMD)                                                                                                         | On tag added (and tests passed or ran manually)     | <https://os.gnome.org/download/stable/50/gnome_os_50.0-x86_64.iso>            |
| GNOME OS ISO (stable ARM)                                                                                                                 | On tag added (and tests passed or ran manually)     | <https://os.gnome.org/download/stable/50/gnome_os_50.0-aarch64.iso>           |
| GNOME OS sysupdate repository (nightly Intel & AMD, nightly ARM)                                                                          | Merged to master                                    | <https://1270333429.rsc.cdn77.org/nightly/sysupdate/SHA256SUMS>               |
| GNOME OS sysupdate repository (stable Intel & AMD, stable ARM)                                                                            | Merged to stable branch                             | <https://1270333429.rsc.cdn77.org/gnome-50/sysupdate/SHA256SUMS>              |
| OCI images (nightly) (`platform`, `sdk`, `gnomeos`, `gnomeos-devel`); also tagged `latest` and `master`; `gnomeos*` is `bootc`-compatible | Merged to master                                    | `podman pull quay.io/gnome_infrastructure/gnome-build-meta:gnomeos-nightly`   |
| OCI images (stable) (`platform`, `sdk`, `gnomeos`, `gnomeos-devel`); `gnomeos*` is `bootc`-compatible                                     | On tag added                                        | `podman pull quay.io/gnome_infrastructure/gnome-build-meta:gnomeos-50`        |
| CVE reports (nightly)                                                                                                                     | Merged to master                                    | <https://gnome.pages.gitlab.gnome.org/gnome-build-meta/release-contents.html> |
| BuildStream cache server                                                                                                                  | Populated on every build                            | `https://gbm.gnome.org:11003` (configured in [project.conf](./project.conf))  |

Images for the PinePhone, PinePhone Pro and Fairphone 5 are not automatically built by CI/CD.
