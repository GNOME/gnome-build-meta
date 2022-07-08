kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/42/gnome-calculator-42.2.tar.xz
  ref: 33dab1bca43658d66520958b0f674cb0ad3185cfd30c12e459e7f69481c5c6a0
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
