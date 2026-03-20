kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.10/libpanel-1.10.4.tar.xz
  ref: 593888a7691f0af8aaa6e193c9e14afa86a810c0c2f27515c6d813f18733b1cd
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
