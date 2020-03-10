kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.48/vala-0.48.0.tar.xz
  ref: 0926b29614c82a67e36e95996e905ad052f7f7b02fe855b2d17bd14e155e10cc
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
