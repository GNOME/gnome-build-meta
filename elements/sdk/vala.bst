kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vala/0.42/vala-0.42.3.tar.xz
  ref: 5fc73dd1e683dc7391bb96d02b2f671aa8289411a48611a05265629e0048587d
- kind: patch
  path: files/vala/0001-build-Allow-disabling-the-build-of-valadoc.patch
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
  conf-local: --enable-unversioned --disable-valadoc
config:
  configure-commands:
    (<):
    # force autogen
    - rm -f configure
