kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-photos/42/gnome-photos-42.0.tar.xz
  ref: 25cb281425199dec7b045f13f32f8f96034cb0cb8b94d96f9dffaf4f5be68551
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/tracker-miners.bst
- core-deps/grilo-plugins.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/babl.bst
- core-deps/gegl.bst
- core-deps/geocode-glib-1.bst
- core-deps/gexiv2.bst
- core-deps/gfbgraph.bst
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/libdazzle.bst
- core-deps/libgdata.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstalled_tests=false
    -Ddogtail=false
