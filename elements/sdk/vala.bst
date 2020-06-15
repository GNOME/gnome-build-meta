kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.48/vala-0.48.6.tar.xz
  ref: d18d08ed030ce0e0f044f4c15c9df3c25b15beaf8700e45e43b736a6debf9707
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
