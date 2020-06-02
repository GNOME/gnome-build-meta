kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.62/glibmm-2.62.0.tar.xz
  ref: 8e57b780b74eeb45387b2036f1a76575c7bd0d8a15e53d1b603930bec8a1374e
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
