kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp-xsl/3.30/yelp-xsl-3.30.0.tar.xz
  ref: 976c4436d2b0189ced004e52af6321bf9d00fe82187df0eb0e81ce732c3806cd
depends:
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
