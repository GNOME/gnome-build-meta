kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gexiv2/0.10/gexiv2-0.10.9.tar.xz
  ref: 8806234aa6fd1c345d46bf07a14e82771415071ca5ff63615b1ea62bd2fec0ed
depends:
- core-deps/exiv2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
