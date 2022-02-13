kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.54/vala-0.54.7.tar.xz
  ref: 62079ca1ff02e5d17ae72aa9a5adc61ae6afdcfebb0d9f06063a36efbeaca0c7
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
