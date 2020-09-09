kind: meson
sources:
- kind: tar
  url: gnome_downloads:grilo/0.3/grilo-0.3.13.tar.xz
  ref: d14837f22341943ed8a189d9f0827a17016b802d18d0ed080e1413de0fdc927b
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
