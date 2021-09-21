kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.54/vala-0.54.1.tar.xz
  ref: 5dde77ac86f0633cb78a1eba7399edc77d5bbfe1e830c1203c51d594a169904a
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
