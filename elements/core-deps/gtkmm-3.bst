kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtkmm/3.24/gtkmm-3.24.5.tar.xz
  ref: 856333de86689f6a81c123f2db15d85db9addc438bc3574c36f15736aeae22e6
build-depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/atkmm-1.6.bst
- core-deps/cairomm-1.0.bst
- core-deps/pangomm-1.4.bst
- core-deps/glibmm-2.4.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
