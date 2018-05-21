kind: meson
sources:
- kind: git
  url: git_freedesktop_org:wayland/libinput.git
  track: master
depends:
- core-deps/gtk+-3.bst
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
