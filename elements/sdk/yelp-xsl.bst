kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp-xsl/3.30/yelp-xsl-3.30.1.tar.xz
  ref: fcef31c5938c6654976bbabb8b5d0d9e49fa2ce79136db74ca213056fdb8cf39
depends:
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
