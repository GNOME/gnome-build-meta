kind: meson
sources:
- kind: tar
  url: gnome_downloads:amtk/5.3/amtk-5.3.1.tar.xz
  ref: d5aa236c5d71dc41aa4674f345560a67a27f21c0efc97c9b3da09cb582b4638b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:bootstrap-import.bst
