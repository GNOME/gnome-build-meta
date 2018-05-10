kind: autotools
sources:
- kind: tar
  url: github_com:AbiWord/enchant/releases/download/v2.2.3/enchant-2.2.3.tar.gz
depends:
- core-deps/glib.bst
- filename: desktop/hunspell.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-hunspell --with-hunspell-dir=/usr/share/myspell
config:
  configure-commands:
  - '%{configure} %{conf-args}'
