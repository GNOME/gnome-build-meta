kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.52/vala-0.52.10.tar.xz
  ref: 9c201bf812d9874e21bde53f8d9c14f651748b1a81441ff5c929122444901008
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
