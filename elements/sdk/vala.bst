kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.54/vala-0.54.3.tar.xz
  ref: ed1d5fe4cbc0cd2845d0de4f1ffefb15afb06892d230c7cca695781672e8fb60
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
