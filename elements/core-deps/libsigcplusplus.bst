kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libsigc++/3.0/libsigc++-3.0.2.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-documentation
