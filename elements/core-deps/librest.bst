kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/rest/0.8/rest-0.8.1.tar.xz
  ref: 0513aad38e5d3cedd4ae3c551634e3be1b9baaa79775e53b2dba9456f15b01c9
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
