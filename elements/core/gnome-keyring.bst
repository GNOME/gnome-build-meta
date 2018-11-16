kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-keyring/3.28/gnome-keyring-3.28.2.tar.xz
depends:
- sdk/gcr.bst
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/openssh.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
