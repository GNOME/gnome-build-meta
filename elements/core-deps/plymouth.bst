kind: meson

sources:
- kind: tar
  base-dir: ''
  url: freedesktop_software:plymouth/releases/plymouth-24.004.60.tar.xz
  ref: f3f7841358c98f5e7b06a9eedbdd5e6882fd9f38bbd14a767fb083e3b55b1c34

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
  meson: meson %{build-dir} */ %{meson-args}
  meson-local: >-
    -Dgtk=disabled
