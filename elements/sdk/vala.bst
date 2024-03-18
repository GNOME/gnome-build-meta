kind: autotools

sources:
- kind: tar
  url: gnome_downloads:vala/0.56/vala-0.56.16.tar.xz
  ref: 05487b5600f5d2f09e66a753cccd8f39c1bff9f148aea1b7774d505b9c8bca9b
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/vala-bootstrap.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --enable-unversioned
    --disable-valadoc
  make: make bootstrap
