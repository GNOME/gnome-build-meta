kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtk-doc/1.32/gtk-doc-1.32.tar.xz
  ref: de0ef034fb17cb21ab0c635ec730d19746bce52984a6706e7bbec6fb5e0b907c
depends:
- filename: sdk/python-pygments.bst
  type: runtime
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
- filename: components/docbook-xml.bst
  junction: freedesktop-sdk.bst
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
- filename: components/pkg-config.bst
  junction: freedesktop-sdk.bst
- filename: components/python3.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
