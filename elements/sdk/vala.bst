kind: autotools

sources:
- kind: tar
  url: gnome_downloads:vala/0.56/vala-0.56.9.tar.xz
  ref: 55578c7c4f067ace028e541806af240f8084cb6ff0cc554caa8ac08cbf8bce2f
build-depends:
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
