kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.48/vala-0.48.11.tar.xz
  ref: 54fd1bb356d69824009691955c885bae357eec4eaced6c2e2d038180322e306a
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
