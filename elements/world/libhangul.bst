kind: autotools
sources:
- kind: tar
  url: http://kldp.net/hangul/release/3442-libhangul-0.1.0.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
