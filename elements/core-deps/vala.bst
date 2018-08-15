depends:
- core-deps/glib.bst
- core-deps/graphviz.bst
- filename: core-deps/vala-tarball.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 448f43cabd127b97c71a908587fd77bb0d6c1168a76f9834290df50d6e18c435
  url: https://download.gnome.org/sources/vala/0.41/vala-0.41.91.tar.xz
