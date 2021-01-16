kind: autotools
sources:
- kind: tar
  url: github_com:AbiWord/enchant/releases/download/v2.2.12/enchant-2.2.12.tar.gz
  ref: 6b9bc58ae714ee7f5335ade966f4ac5718d5339e280cc9e1cca9ab278c06227e
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
