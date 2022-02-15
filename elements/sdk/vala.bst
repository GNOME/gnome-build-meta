kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.55/vala-0.55.3.tar.xz
  ref: c16185e7d1f217836a7cebc649aafe83550bb7b192fbd327ede388cd2c2d5049
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
