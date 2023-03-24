kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-weather.git
  track: main
  ref: 44.0-2-g3933010933910264228510a86ed1183b39e02015

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
