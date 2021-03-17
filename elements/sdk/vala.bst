kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.52/vala-0.52.0.tar.xz
  ref: 1de26310db465aca525679d3b5a3c1d8db2e067c4cbc0e5ddd015cd938bac68b
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
