kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-keyring/3.34/gnome-keyring-3.34.0.tar.xz
  ref: e9cda9542a3e37c61636145e7e9e2513c569092ea8020752a834e1f40ad41943
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
