kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.52/vala-0.52.7.tar.xz
  ref: 0bb5a9b4f6d175499ec0a58024adc035aa5170080f533c28d9c358d1a32c536a
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
