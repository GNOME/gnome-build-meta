kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.56/vala-0.56.0.tar.xz
  ref: d92bd13c5630905eeb6a983dcb702204da9731460c2a6e4e39f867996f371040
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
