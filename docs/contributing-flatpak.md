# Contributing to the GNOME Flatpak runtimes

This guide covers the Flatpak runtime-specific parts of contributing. Read the [contribution guide](../CONTRIBUTING.md) first for the general setup.

## 1. Building and installing the runtimes locally

First, build the runtime, then check it out into a Flatpak repository:

```shell
bst build flatpak/runtimes-repo.bst
bst artifact checkout flatpak/runtimes-repo.bst --directory repo
```

Then add the repository as a remote to your system and install the runtime from there:

```shell
flatpak remote-add --user --no-gpg-verify testrepo repo
flatpak install testrepo org.gnome.Sdk org.gnome.Platform
```

The extensions (`org.gnome.Sdk.Debug`, `org.gnome.Sdk.Docs`, `org.gnome.Platform.Locale`, arch-compat layers, etc.) at [`flatpak/extensions-repo.bst`](../elements/flatpak/extensions-repo.bst) can be built and installed by following the same pattern (see also the [published build outputs](../README.md#published-build-outputs)).

To remove the runtime again, simply remove the remote:

```shell
flatpak remote-delete --user testrepo
```

## 2. Using the locally built runtimes

Run a shell in the SDK to poke at it directly:

```shell
flatpak run --user --command=bash org.gnome.Sdk//master
```

Or build an app of yours against the locally installed runtime using [GNOME Builder](https://apps.gnome.org/Builder/) or [Foundry](https://gitlab.gnome.org/GNOME/foundry).

## 3. Opening a merge request with your changes

See [Opening a merge request with your changes](../CONTRIBUTING.md#4-opening-a-merge-request-with-your-changes).
