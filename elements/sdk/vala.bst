kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.50/vala-0.50.9.tar.xz
  ref: b686dda2964b5f3ed5c6c1047942ed738ce5716e083b6c83f0fbe00c927eb670
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
