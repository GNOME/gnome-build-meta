kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.38/vala-0.38.8.tar.xz
depends:
- core-deps/graphviz.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
