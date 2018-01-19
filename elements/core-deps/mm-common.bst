kind: autotools
sources:
- kind: git
  url: git_gnome_org:mm-common
  track: master
depends:
- base.bst
variables:
  conf-local: --disable-network
config:
  configure-commands:
    (<):
    - cp /usr/share/doc/*/libstdc++/user/libstdc++.tag doctags/
