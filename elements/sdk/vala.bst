kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.56/vala-0.56.14.tar.xz
  ref: 9382c268ca9bdc02aaedc8152a9818bf3935273041f629c56de410e360a3f557
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
