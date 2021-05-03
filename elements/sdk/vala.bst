kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.50/vala-0.50.8.tar.xz
  ref: 7939a179cc6553ded6df7cd5aa5db416c8750c07e879ee5e3bc5769f192f6568
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
