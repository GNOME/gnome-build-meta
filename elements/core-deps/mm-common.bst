kind: autotools
sources:
- url: https://download.gnome.org/sources/mm-common/0.9/mm-common-0.9.11.tar.xz
  kind: tar
  ref: 20d1e7466ca4c83c92e29f9e8dfcc8e5721fdf1337f53157bed97be3b73b32a8
depends:
- base.bst
variables:
  conf-local: --disable-network
config:
  configure-commands:
    (<):
    - cp /usr/share/doc/*/libstdc++/user/libstdc++.tag doctags/
