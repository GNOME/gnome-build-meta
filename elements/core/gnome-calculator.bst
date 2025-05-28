kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/47/gnome-calculator-47.3.tar.xz
  ref: e6ebdf3400f5818cf4aa207e1b011e61314bb64ceb81690a0b0c028a2b14fa9a
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
