kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.49/vala-0.49.92.tar.xz
  ref: 6f227c2761d9d8764e23228df743a407827bf0c12c3857e1f157964b586c4705
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
