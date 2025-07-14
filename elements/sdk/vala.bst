kind: autotools

sources:
- kind: git_repo
  url: gnome:vala.git
  track: main
  ref: 0.57.0-339-g9f7a5931a5fe77501bbb4e9f37c02d323bf23392

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/vala-bootstrap.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --enable-unversioned
    --disable-valadoc
  make: make bootstrap
  local_flags: >-
    -Wno-error=incompatible-pointer-types
