kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.51/vala-0.51.2.tar.xz
  ref: a1db75bfdc7e8ffa08d2c4a8a4b561fb24f3e9516d712531b8d14a74695a37b2
build-depends:
- sdk/vala-tarball.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-unversioned
    --disable-valadoc
  make: make bootstrap
