kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.56/vala-0.56.4.tar.xz
  ref: 862c41d938543ed3d8d86c8219a61087797193defee8da0c50caf49993c66b6a
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
