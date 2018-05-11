kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/mm-common/0.9/mm-common-0.9.12.tar.xz
  ref: ceffdcce1e5b52742884c233ec604bf6fded12eea9da077ce7a62c02c87e7c0b
depends:
- base.bst
variables:
  conf-local: --disable-network
config:
  configure-commands:
    (<):
    - cp /usr/share/doc/*/libstdc++/user/libstdc++.tag doctags/
