kind: meson
sources:
- kind: tar
  url: gnome_downloads:pangomm/2.42/pangomm-2.42.1.tar.xz
  ref: 14bf04939930870d5cfa96860ed953ad2ce07c3fd8713add4a1bfe585589f40f
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- sdk/pango.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
