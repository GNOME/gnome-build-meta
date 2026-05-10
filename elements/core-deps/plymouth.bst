kind: meson

sources:
- kind: git_repo
  url: freedesktop:plymouth/plymouth.git
  track: main
  ref: 24.004.60-217-g016708af9748219265229e1ee28dc7fdeafb649f

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
