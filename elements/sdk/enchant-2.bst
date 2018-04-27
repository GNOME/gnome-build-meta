kind: autotools
sources:
- kind: tar
  url: github_com:AbiWord/enchant/releases/download/v2.2.3/enchant-2.2.3.tar.gz
depends:
- sdk/glib.bst
- base.bst
variables:
  conf-local: --with-hunspell --with-hunspell-dir=/usr/share/myspell
config:
  configure-commands:
  - '%{configure} %{conf-args}'
