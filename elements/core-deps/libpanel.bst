kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.1/libpanel-1.1.0.tar.xz
  ref: a19f6ecdbc82e601be38da0a93ebd913f4c43769fe4ab4f334c35deb8b3a2f11
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
