kind: meson
sources:
- kind: git
  url: git_freedesktop_org:wayland/libinput.git
  track: master
depends:
- core-deps/libwacom.bst
- core-deps/meson.bst
- base.bst
