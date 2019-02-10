kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vala/0.42/vala-0.42.5.tar.xz
  ref: 8c33b4abc0573d364781bbfe54a1668ed34956902e471191a31cf05dc87c6e12
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
