kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vala/0.42/vala-0.42.0.tar.xz
  ref: 62a55986da23cf3aaafd7624c32db2a1af11c8419e0bb0751727d10f1f7ab7be
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
