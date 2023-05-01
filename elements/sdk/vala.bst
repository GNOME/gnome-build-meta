kind: autotools

sources:
- kind: git_tag
  url: gnome:vala.git
  track: main
  ref: 0.57.0-146-g94582de0320c39b58eb38c97dbffcf48d2a948b9

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
