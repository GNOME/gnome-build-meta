kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.52/vala-0.52.2.tar.xz
  ref: 3a3c460803ba661e513be3d0984b583e05473f602c75fa98e91755503714a97b
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
