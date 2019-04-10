kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtk-doc/1.29/gtk-doc-1.29.tar.xz
depends:
- sdk/yelp-tools.bst
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
