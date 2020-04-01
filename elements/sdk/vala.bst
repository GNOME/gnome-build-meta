kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.48/vala-0.48.2.tar.xz
  ref: f095b0e624b8f4e5a426028ac255e477fad8c3b4c8cbbdebda8d6cd95bf79477
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
