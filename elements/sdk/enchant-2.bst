kind: autotools
sources:
- kind: tar
  url: github_com:AbiWord/enchant/releases/download/v2.2.15/enchant-2.2.15.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/hunspell.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --with-hunspell
    --with-hunspell-dir=/usr/share/myspell
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libenchant-2.so'
