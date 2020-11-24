kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libsigc++/2.10/libsigc++-2.10.6.tar.xz
  ref: dda176dc4681bda9d5a2ac1bc55273bdd381662b7a6d49e918267d13e8774e1b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-documentation
