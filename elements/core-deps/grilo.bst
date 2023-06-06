kind: meson
sources:
- kind: git_repo
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.16-5-g03f3c7b81b84b7dc3ebbce12b3a2f42997edce5e
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
