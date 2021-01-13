kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.64/glibmm-2.64.5.tar.xz
  ref: 508fc86e2c9141198aa16c225b16fd6b911917c0d3817602652844d0973ea386
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libsigcplusplus-2.0.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-maintainer-mode
