kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/50/gnome-backgrounds-50.0.tar.xz
  ref: 1acdba7acb4f34c7321febc6273444344fd55fd593611d446de70860183b52b8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
