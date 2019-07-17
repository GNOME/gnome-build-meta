kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-keyring/3.31/gnome-keyring-3.31.91.tar.xz
depends:
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/libxslt.bst
  junction: freedesktop-sdk.bst
- filename: components/openssh.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
