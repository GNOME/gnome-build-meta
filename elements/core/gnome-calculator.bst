kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/43/gnome-calculator-43.rc.tar.xz
  ref: 6f2736d03ae941738d6fcebdbdd4a6f3fed2828d40f601959c29873686005286
build-depends:
- sdk/appstream-glib.bst
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
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
