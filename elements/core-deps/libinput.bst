kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libinput/libinput-1.15.1.tar.xz
  ref: 6b2f57495c6f173ecf49ee19d3e10087d9916a52711e1b5eb01e0d9635950c16
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
