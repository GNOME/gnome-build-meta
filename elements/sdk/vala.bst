kind: autotools

sources:
- kind: git_repo
  url: gnome:vala.git
  track: main
  ref: 0.57.0-384-gc5d31b3fcdb9d564dc3340714a129f72a072391f

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/vala-bootstrap.bst
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

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
