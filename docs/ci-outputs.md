# Published build outputs

This document records the published outputs of the gnome-build-meta project that go with different releases

For individual outputs that can be produced by the project at any time for development see [Project outputs](project-outputs.md) and [Contributing](contributing.md)

For details on releases see [the GNOME release calendar](https://release.gnome.org/calendar) and for branches see [Contributing Branches](contributing.md#21-branches)

## Nightly series of releases (master branch)

These are the outputs produced when merging to the master branch of gnome-build-meta for the nightly release series

| Output                                                                                                                                    | When                                                | Example                                                                       |
| ----------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------- | ----------------------------------------------------------------------------- |
| Flatpak `org.gnome.Platform`/`org.gnome.Sdk` runtimes (nightly)                                                                           | Merged to master                                    | `flatpak install flathub org.gnome.Platform//master` / `Sdk//master`          |
| Flatpak extensions (`org.gnome.Sdk.Debug`, `org.gnome.Sdk.Docs`, `org.gnome.Platform.Locale`, arch-compat layers, etc.) (nightly)         | Merged to master                                    | `flatpak install flathub org.gnome.Sdk.Debug//master`                         |
| GNOME OS ISO (nightly Intel & AMD)                                                                                                        | Merged to master (and tests passed or ran manually) | <https://os.gnome.org/download/latest/gnome_os_x86_64.iso>                    |
| GNOME OS ISO (nightly ARM)                                                                                                                | Merged to master (and tests passed or ran manually) | <https://os.gnome.org/download/latest/gnome_os_aarch64.iso>                   |
| GNOME OS sysupdate repository (nightly Intel & AMD, nightly ARM)                                                                          | Merged to master                                    | <https://1270333429.rsc.cdn77.org/nightly/sysupdate/SHA256SUMS>               |
| OCI images (nightly) (`platform`, `sdk`, `gnomeos`, `gnomeos-devel`); also tagged `latest` and `master`; `gnomeos*` is `bootc`-compatible | Merged to master                                    | `podman pull quay.io/gnome_infrastructure/gnome-build-meta:gnomeos-nightly`   |
| CVE reports (nightly)                                                                                                                     | Merged to master                                    | <https://gnome.pages.gitlab.gnome.org/gnome-build-meta/release-contents.html> |

## Stable Series of releases (`gnome-<version>` stable branches)

These are the outputs produced when merging to any the stable branches of gnome-build-meta for stable release series

| Output                                                                                                                           | When                                            | Example                                                          |
| -------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------- | ---------------------------------------------------------------- |
| Flatpak `org.gnome.Platform`/`org.gnome.Sdk` runtimes (beta)                                                                     | Merged to stable branch (and flagged as "beta") | `flatpak install flathub-beta org.gnome.Platform//50beta`        |
| Flatpak `org.gnome.Platform`/`org.gnome.Sdk` runtimes (stable)                                                                   | Merged to stable branch                         | `flatpak install flathub org.gnome.Platform//50`                 |
| Flatpak extensions (`org.gnome.Sdk.Debug`, `org.gnome.Sdk.Docs`, `org.gnome.Platform.Locale`, arch-compat layers, etc.) (beta)   | Merged to stable branch (and flagged as "beta") | `flatpak install flathub-beta org.gnome.Sdk.Debug//50beta`       |
| Flatpak extensions (`org.gnome.Sdk.Debug`, `org.gnome.Sdk.Docs`, `org.gnome.Platform.Locale`, arch-compat layers, etc.) (stable) | Merged to stable branch                         | `flatpak install flathub org.gnome.Sdk.Debug//50`                |
| GNOME OS sysupdate repository (stable Intel & AMD, stable ARM)                                                                   | Merged to stable branch                         | <https://1270333429.rsc.cdn77.org/gnome-50/sysupdate/SHA256SUMS> |

## Stable Point Releases (Tags)

These are the outputs produced when a tag is added to the stable branches of gnome-build-meta for stable point releases

| Output                                                                                                | When                                            | Example                                                                |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------- | ---------------------------------------------------------------------- |
| GNOME OS ISO (stable Intel & AMD)                                                                     | On tag added (and tests passed or ran manually) | <https://os.gnome.org/download/stable/50/gnome_os_50.0-x86_64.iso>     |
| GNOME OS ISO (stable ARM)                                                                             | On tag added (and tests passed or ran manually) | <https://os.gnome.org/download/stable/50/gnome_os_50.0-aarch64.iso>    |
| OCI images (stable) (`platform`, `sdk`, `gnomeos`, `gnomeos-devel`); `gnomeos*` is `bootc`-compatible | On tag added                                    | `podman pull quay.io/gnome_infrastructure/gnome-build-meta:gnomeos-50` |

## Other published output notes

The BuildStream cache server is populated on every build: `https://gbm.gnome.org:11003` (configured in [project.conf](https://gitlab.gnome.org/GNOME/gnome-build-meta/-/blob/master/project.conf))

Images for the PinePhone, PinePhone Pro and Fairphone 5 are not automatically built by CI/CD, see [Phones](phones.md)
