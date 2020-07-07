kind: meson
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.64/glibmm-2.64.2.tar.xz
  ref: a75282e58d556d9b2bb44262b6f5fb76c824ac46a25a06f527108bec86b8d4ec
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libsigcplusplus-2.0.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
