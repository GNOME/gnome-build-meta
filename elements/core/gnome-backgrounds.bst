kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/51/gnome-backgrounds-51.beta.tar.xz
  ref: b6bbd3c0dc19c9684979bf4097d48cd97b3c4802c8adaffa2e82c2048f3156cf
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
