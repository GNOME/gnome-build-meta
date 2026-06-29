kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/51/gnome-backgrounds-51.alpha.0.tar.xz
  ref: 6005084c8987f0db5f46731b24a2153146a6b59c18174a352cd82da969fd8dee
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
