kind: meson
sources:
- kind: tar
  url: gnome_downloads:grilo/0.3/grilo-0.3.11.tar.xz
  ref: 0f911c0cb5a2f1c3e71215028553cfd6937bed4df88042452f276ebf2c28eb68
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
