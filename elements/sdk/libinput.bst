kind: meson
sources:
- kind: git
  url: git_freedesktop_org:wayland/libinput.git
  track: master
depends:
- sdk/libevdev.bst
- sdk/libwacom.bst
- sdk/mtdev.bst
- base.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
