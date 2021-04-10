kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.52/vala-0.52.1.tar.xz
  ref: 17a083ce2405f967efa7d92bce82c49e5f65af334513e3d087a6b4435ed6b9fa
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
