kind: autotools
sources:
- kind: tar
  url: github_com:libhangul/ibus-hangul/releases/download/1.5.4/ibus-hangul-1.5.4.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/ibus-daemon.bst
- vm/libhangul.bst
- freedesktop-sdk.bst:bootstrap-import.bst
