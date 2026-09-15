kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/51/gnome-backgrounds-51.0.tar.xz
  ref: 5811d24118d78f41b66c616efb1094c20507cb546e484dca4963fe738a4ba7db
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
