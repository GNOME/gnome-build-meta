kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.62/glibmm-2.62.0.tar.xz
  ref: 36659f13cc73282392d1305858f3bbca46fbd1ce2f078cc9db8b9f79b2e93cfe
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
