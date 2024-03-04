kind: autotools

sources:
- kind: tar
  url: gnome_downloads:vala/0.56/vala-0.56.15.tar.xz
  ref: 535b6452ed310fd5fb5c7dd6794b6213dac3b48e645e5bff3173741ec2cb3f2b
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
