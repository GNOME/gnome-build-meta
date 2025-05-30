kind: autotools
sources:
- kind: tar
  url: github_files:rrthomas/enchant/releases/download/v2.8.2/enchant-2.8.2.tar.gz
  ref: 8f19535adb5577b83b00e02f330fe9b9eb40dd21f19e2899636fc4d3a7696375
build-depends:
- freedesktop-sdk.bst:components/groff.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/nuspell.bst
- freedesktop-sdk.bst:components/hunspell.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  conf-local: >-
    --with-hunspell
    --with-hunspell-dir=/usr/share/myspell
    --with-nuspell
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libenchant-2.so'
