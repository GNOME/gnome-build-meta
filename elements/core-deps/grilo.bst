kind: meson
sources:
- kind: git_tag
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.16-4-g7f4c6bcd12a3b6e6e83a85284a7c21a0d69dd4c0
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
