kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.56/vala-0.56.2.tar.xz
  ref: 66c9619bb17859fd1ac3aba0a57970613e38fd2a1ee30541174260c9fb90124c
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
