kind: meson
sources:
- kind: tar
  url: gnome_downloads:tepl/4.99/tepl-4.99.3.tar.xz
  ref: e4afe634f00c5530ae52d706d9c3a9bdf2dbc74b0459a363703a0a9b4a5e3157
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst
depends:
- core-deps/amtk.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
