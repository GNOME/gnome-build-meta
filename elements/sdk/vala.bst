kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.54/vala-0.54.6.tar.xz
  ref: 49d60d96a3fdf6c4287397442bc6d6d95bf40aa7df678ee49128c4b11ba6e469
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
