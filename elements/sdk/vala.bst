kind: autotools

sources:
- kind: git_repo
  url: gnome:vala.git
  track: main
  ref: 0.57.0-232-g8d5afc9a9c7f4a4bbf78e906b83dad7c277eea3c

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
