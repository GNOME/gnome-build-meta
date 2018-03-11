kind: autotools
sources:
- kind: tar
  url: github_tar:choehwanjin/ibus-hangul/releases/download/1.5.0/ibus-hangul-1.5.0.tar.gz
  ref: a22d4030bb20f73914a9d8a28c71b823123a5d1902a30f8328111af50f4f1788
depends:
- base.bst
config:
  configure-commands:
  - '%{configure} %{conf-args}'
