kind: autotools
sources:
- kind: tar
  url: github_tar:AbiWord/enchant/releases/download/v2.2.0/enchant-2.2.0.tar.gz
  ref: 2f91ea06992c923ac9b72c9c6d0a7c855aef1e9a4991350d83236723c8412467
depends:
- core-deps/glib.bst
- base.bst
variables:
  conf-local: --with-hunspell --with-hunspell-dir=/usr/share/myspell
config:
  configure-commands:
  - '%{configure} %{conf-args}'
