kind: autotools

sources:
- kind: git_repo
  url: gnome:vala.git
  track: main
  ref: 0.57.0-303-gee52e5a530bc4ad93a605add9a1ce184de3f0d9c

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
  local_flags: >-
    -Wno-error=incompatible-pointer-types
