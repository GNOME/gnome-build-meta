kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/43/gnome-backgrounds-43.beta.tar.xz
  ref: aeb5d436a78ba5eb77541e4d996426bb60d3d8ec10e451836f871213f5f34f83
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
