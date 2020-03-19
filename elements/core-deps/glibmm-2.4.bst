kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.64/glibmm-2.64.1.tar.xz
  ref: aae0616c777a44a4ecf2ab74372cafbcbe14da3233fa389787d52cd4fd48c9f5
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
