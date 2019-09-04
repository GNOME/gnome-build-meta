kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtk-doc/1.32/gtk-doc-1.32.tar.xz
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
