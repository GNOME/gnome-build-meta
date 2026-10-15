kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/51/gnome-backgrounds-51.0.1.tar.xz
  ref: ec50534d7749be0e1503c5504f826c61d1460d2b41cb84518fa6b2f5547d1e1e
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
