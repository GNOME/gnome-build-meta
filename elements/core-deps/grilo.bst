kind: meson
sources:
- kind: git_tag
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.16-0-g923397361b36e95ddd57cff70ba7b0a8cb8d5e8c
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
