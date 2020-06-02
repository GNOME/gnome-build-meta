kind: autotools
sources:
- kind: tar
  url: https://tecnocode.co.uk/downloads/uhttpmock/uhttpmock-0.5.2.tar.xz
  ref: 17156920c844d4ee9df63f6006df323851a69f9b60dc5d3a1b7ab03e0fe89e3e
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
