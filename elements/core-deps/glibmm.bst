kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.68/glibmm-2.68.0.tar.xz
  ref: c1f38573191dceed85a05600888cf4cf4695941f339715bd67d51c2416f4f375
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
