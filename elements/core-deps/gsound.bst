kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsound/1.0/gsound-1.0.3.tar.xz
  ref: ca2d039e1ebd148647017a7f548862350bc9af01986d39f10cfdc8e95f07881a
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- core-deps/libcanberra.bst
- freedesktop-sdk.bst:bootstrap-import.bst
