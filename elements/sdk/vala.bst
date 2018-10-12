kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vala/0.42/vala-0.42.2.tar.xz
  ref: 9e89aa42152b1cef551568f827aa2deea2a9b5487d78c91474c8617b618e5f07
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
