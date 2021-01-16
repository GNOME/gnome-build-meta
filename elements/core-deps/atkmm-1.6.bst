kind: meson
sources:
- kind: tar
  url: gnome_downloads:atkmm/2.28/atkmm-2.28.1.tar.xz
  ref: 116876604770641a450e39c1f50302884848ce9cc48d43c5dc8e8efc31f31bad
build-depends:
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
