kind: autotools

sources:
- kind: tar
  url: gnome_downloads:vala/0.56/vala-0.56.11.tar.xz
  ref: 0cf3baf19f278fbeaf78bab2ee1dd18ce53e0d65bf9c57d5aa000c1832b1de64
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
