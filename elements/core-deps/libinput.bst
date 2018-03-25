kind: meson
sources:
- kind: git
  url: git_freedesktop_org:wayland/libinput.git
  track: master
depends:
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- base.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
