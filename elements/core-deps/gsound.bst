kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsound/1.0/gsound-1.0.3.tar.xz
  ref: ca2d039e1ebd148647017a7f548862350bc9af01986d39f10cfdc8e95f07881a
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgtk_doc=true
