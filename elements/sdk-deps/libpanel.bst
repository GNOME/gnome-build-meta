kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.7/libpanel-1.7.0.tar.xz
  ref: 3ab29489f320d07dd032c7481999ba14eddae3ae19bb1c7e9fc2cc67051e1fda
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
