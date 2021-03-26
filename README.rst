GNOME Build Metadata
====================
The GNOME Build Metadata repository is where the GNOME release team manages
build metadata for building the GNOME software stack.

The content of this repository is a `BuildStream <https://wiki.gnome.org/Projects/BuildStream>`_
project. Instructions for building GNOME can be `found here <https://wiki.gnome.org/Newcomers/BuildSystemComponent>`_.

To build a runtime locally, for debugging:

```
$ bst build flatpak-runtimes.bst
$ bst checkout flatpak-runtimes.bst repo
$ flatpak remote-add --user --no-gpg-verify testrepo repo
$ flatpak install testrepo org.gnome.Platform
```
