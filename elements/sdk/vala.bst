kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vala/0.42/vala-0.42.4.tar.xz
  ref: b528906d080ac5b6043285a82c194c988e495c70da71ae19c1fc7811509f4f1e
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
