kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:gettext/gettext-0.19.8.1.tar.xz
  ref: 105556dbc5c3fbbc2aa0edb46d22d055748b6f5c7cd7a8d99f8e7eb84e938be4
depends:
- base.bst
config:
  configure-commands:
  - '%{configure} %{conf-args}'
