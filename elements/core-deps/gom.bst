kind: meson
sources:
- kind: tar
  url: gnome_downloads:gom/0.5/gom-0.5.5.tar.xz
  ref: ad61f05af2317a7ab1771fcfa816989fbba3b18957d2e0b5dede9ef45f09b534
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
