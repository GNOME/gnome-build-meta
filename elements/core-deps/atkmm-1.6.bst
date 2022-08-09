kind: meson
sources:
- kind: tar
  url: gnome_downloads:atkmm/2.28/atkmm-2.28.3.tar.xz
  ref: 7c2088b486a909be8da2b18304e56c5f90884d1343c8da7367ea5cd3258b9969
build-depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
