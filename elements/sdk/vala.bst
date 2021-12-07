kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.54/vala-0.54.4.tar.xz
  ref: 6051270a2fc30de023c88562566f2f6043e67beb4da4b799c14cdf12048eb40c
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
