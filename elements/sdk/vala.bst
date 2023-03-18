kind: autotools
sources:
- kind: git_tag
  url: gnome:vala.git
  track: main
  ref: 0.56.2-91-ga902d7eae96a3f1ab0cb64f268443b23ee8ab45a
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
