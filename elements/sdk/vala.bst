kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.48/vala-0.48.13.tar.xz
  ref: c23426c5e344a7e8c69f5512b2febddfc9c7ecab23244ca3537ce7f15d95c788
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
