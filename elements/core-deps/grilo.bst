kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/grilo.git
  track: master
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libsoup-2.4.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
