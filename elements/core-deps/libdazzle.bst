kind: meson
sources:
- kind: tar
  url: gnome_downloads:libdazzle/3.43/libdazzle-3.43.90.tar.xz
  ref: 2cf4ed0a829cc346b0a860f9411cab27aae426349c4fec02814640cb3984ca26
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
