kind: meson
sources:
- kind: git_tag
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.15-11-gca5d6c827fab1cfdd5d4b1a0a0d65f86fe6adac1
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
