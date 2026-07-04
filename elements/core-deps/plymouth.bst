kind: meson

sources:
- kind: git_repo
  url: freedesktop:plymouth/plymouth.git
  track: "*.*.*"
  ref: 26.134.222-0-gd15928a8e06c217aad0f2e3579df23fec93dc009

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/cairo.bst
- sdk/cantarell-fonts.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/systemd.bst

variables:
  meson-local: >-
    -Dgtk=disabled
