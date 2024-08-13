kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/47/gnome-calculator-47.beta.tar.xz
  ref: d8cf2847f1a6571a04c095210c18381fce18f64abef734cd7b2d42f5bf12aa2b
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- sdk/libgee.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
