kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.48/vala-0.48.12.tar.xz
  ref: 602c415004610e1d80c209aa7fc89f6264bcd1f416801df32a81bf89c5880b29
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
