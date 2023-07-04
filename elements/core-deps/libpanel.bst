kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.2/libpanel-1.2.0.tar.xz
  ref: d9055bbbab9625f3f5ce6d1fd7132eb6ea34a6ba07a87e9938901fb8b31581e2
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
