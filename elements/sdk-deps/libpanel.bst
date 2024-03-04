kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.5/libpanel-1.5.1.tar.xz
  ref: 8052c527342e16492e1e188949eddd6f24b95e8e26c40a2518946e09e4805c3b
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
