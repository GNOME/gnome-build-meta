kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/40/libgweather-40.alpha.1.tar.xz
  ref: fa15b1bcb6c122f2ca1c8d380d7f2d41f5ef97e80c4c1f90897ffdeb6871d42d
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
