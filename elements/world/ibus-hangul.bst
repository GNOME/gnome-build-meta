kind: autotools
sources:
- kind: tar
  url: github_com:libhangul/ibus-hangul/releases/download/1.5.2/ibus-hangul-1.5.2.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/ibus.bst
- world/libhangul.bst
- freedesktop-sdk.bst:bootstrap-import.bst
