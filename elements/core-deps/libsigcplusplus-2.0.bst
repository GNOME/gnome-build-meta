kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsigc++/2.10/libsigc++-2.10.7.tar.xz
  ref: d082a2ce72c750f66b1a415abe3e852df2eae1e8af53010f4ac2ea261a478832
build-depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
