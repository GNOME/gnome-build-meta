kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.1/libshumate-1.1.rc.tar.xz
  ref: e0f91c40fcff9cf8963614a2e529daac7a41434ed96059006e8a0264c1eda0d4
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
