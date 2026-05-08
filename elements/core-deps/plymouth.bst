kind: meson

sources:
- kind: git_repo
  url: freedesktop:plymouth/plymouth.git
  track: main
  ref: 26.134.222-2-g668011c9e8ed0b83648d11059f7c16c02cc4233d

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/sed.bst
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

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
