kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.62/glibmm-2.62.0.tar.xz
  ref: 36659f13cc73282392d1305858f3bbca46fbd1ce2f078cc9db8b9f79b2e93cfe
depends:
- core-deps/libsigcplusplus-2.0.bst
- sdk/glib.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
