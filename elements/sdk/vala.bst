kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vala/0.41/vala-0.41.92.tar.xz
  ref: 95d35d87a707d1abddc3de3655f8ee2d0deedcb9e7dd1100301ec53178ff65f2
depends:
- sdk/glib.bst
- filename: sdk/vala-tarball.bst
  type: build
- filename:  core-deps/graphviz.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --enable-unversioned
