kind: autotools
sources:
- kind: tar
  url: github_com:AbiWord/enchant/releases/download/v2.2.3/enchant-2.2.3.tar.gz
  ref: abd8e915675cff54c0d4da5029d95c528362266557c61c7149d53fa069b8076d
depends:
- core-deps/glib.bst
- filename: desktop/hunspell.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-hunspell --with-hunspell-dir=/usr/share/myspell
