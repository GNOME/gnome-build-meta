kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.47/vala-0.47.91.tar.xz
  ref: 3d71550028f6dce41393477d71cfc6c23a399616380c1ff5f9f76ca0ac008ad2
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
