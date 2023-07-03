kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-photos/43/gnome-photos-43.1.tar.xz
  ref: f3e1671a012cf2cce4720fb05cef64d3466124ff7943c1bbc8c4d59cfb52b0ab
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
- core-deps/geocode-glib.bst
- core-deps/gexiv2.bst
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/libdazzle.bst
- core-deps/libgdata.bst
- core-deps/libportal.bst
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
