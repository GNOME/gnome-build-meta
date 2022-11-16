kind: meson
sources:
- kind: git_tag
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.15-12-gb0d75be00b06cb0163dabbedecf9122a55273349
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
