kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.0/libpanel-1.0.1.tar.xz
  ref: 841b6ab71eb072fd6520023e1f71aac7ff250c66eadfbb17c955da6bf41e2306
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
