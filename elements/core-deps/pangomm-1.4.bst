kind: meson
sources:
- kind: tar
  url: gnome_downloads:pangomm/2.46/pangomm-2.46.0.tar.xz
  ref: d3787d04d6198b606f3efa357b3b452a7140e2a7dee56f9f9ce516d7d5fcec1b
build-depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- sdk/pango.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
