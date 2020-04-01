kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.65/glibmm-2.65.3.tar.xz
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libsigcplusplus.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-maintainer-mode
