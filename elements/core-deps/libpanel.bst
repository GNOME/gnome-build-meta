kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.0/libpanel-1.0.0.tar.xz
  ref: b0fa73fcc38539883460064033033bac71b31734b0990205338e5513b9605e6d
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
