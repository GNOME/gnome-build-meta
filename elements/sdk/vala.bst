kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.47/vala-0.47.92.tar.xz
  ref: 2c911a863282d3d93b96d2f65e544d5214346453b6dd01e351b3929f0824a184
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
