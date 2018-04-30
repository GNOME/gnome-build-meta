kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:wayland/wayland
  track: master
depends:
- base.bst
variables:
  conf-local: --disable-documentation
