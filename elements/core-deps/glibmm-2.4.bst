kind: meson
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.66/glibmm-2.66.2.tar.xz
  ref: b2a4cd7b9ae987794cbb5a1becc10cecb65182b9bb841868625d6bbb123edb1d
build-depends:
- core-deps/mm-common.bst
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
