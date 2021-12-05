kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.52/vala-0.52.8.tar.xz
  ref: 777b7d1cb56715ec322545d0130e7ff58d9e7a6d1bd96b6e297e9e60e8118793
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
