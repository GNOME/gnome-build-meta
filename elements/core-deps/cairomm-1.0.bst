kind: autotools
sources:
- kind: tar
  url: cairo_org:releases/cairomm-1.13.1.tar.gz
  ref: 97a78bd7de6baf8af3da1f9b39f1317f8da9f1145b7694e928fbd5521da08ef6
depends:
- core-deps/libsigcplusplus-2.0.bst
- base.bst
config:
  configure-commands:
  - '%{configure} %{conf-args}'
