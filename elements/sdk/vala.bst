kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.55/vala-0.55.1.tar.xz
  ref: 50da2a47d49e07e60fbf868b43de888496163589a49790553b51e4e85aa5a4d4
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
