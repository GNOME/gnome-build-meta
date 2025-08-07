kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/49/gnome-backgrounds-49.beta.tar.xz
  ref: 80b51bfb2f241fc216b1f3156a2354ceda8be6b72a14cc554f4c7a78a3855fc3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libjxl.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
