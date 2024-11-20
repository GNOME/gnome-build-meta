kind: autotools
sources:
- kind: tar
  url: github_files:rrthomas/enchant/releases/download/v2.6.7/enchant-2.6.7.tar.gz
  ref: a1c2e5b59acca000bbfb24810af4a1165733d407f2154786588e076c8cd57bfc
build-depends:
- freedesktop-sdk.bst:components/groff.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/nuspell.bst
- freedesktop-sdk.bst:components/hunspell.bst
- freedesktop-sdk.bst:bootstrap-import.bst
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
