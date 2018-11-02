kind: autotools
sources:
- kind: tar
  url: http://kldp.net/hangul/release/3442-libhangul-0.1.0.tar.gz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
