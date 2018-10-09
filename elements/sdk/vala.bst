kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vala/0.42/vala-0.42.2.tar.xz
- kind: patch
  path: files/vala/libvaladoc-Allow-disabling-the-graphviz-dependency.patch
depends:
- sdk/glib.bst
- filename: sdk/vala-tarball.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --enable-unversioned --disable-graphviz
