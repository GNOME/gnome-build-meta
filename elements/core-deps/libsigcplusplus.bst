kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libsigc++/3.0/libsigc++-3.0.6.tar.xz
  ref: b70edcf4611651c54a426e109b17196e1fa17da090592a5000e2d134c03ac5ce
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-documentation
