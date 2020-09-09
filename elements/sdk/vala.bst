kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.48/vala-0.48.10.tar.xz
  ref: 0b9f0a9621cbc216782cdf7f767374320c0acfc394243f989aabd9af4a7cfb41
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
