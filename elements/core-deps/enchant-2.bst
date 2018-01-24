kind: autotools
sources:
- kind: tar
  url: github_tar:AbiWord/enchant/releases/download/v2.2.1/enchant-2.2.1.tar.gz
  ref: 97f2e617b34c66a645b9cfebe33700456c31ca2f4677eb827b364c0d9a7f4e5e
depends:
- core-deps/glib.bst
- base.bst
variables:
  conf-local: --with-hunspell --with-hunspell-dir=/usr/share/myspell
config:
  configure-commands:
  - '%{configure} %{conf-args}'
