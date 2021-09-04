kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.53/vala-0.53.2.tar.xz
  ref: 1a9c186f7407809b3f1b7d7e567f8fbe46c651d7c02f449034d8301738ca7830
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
