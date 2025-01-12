kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/48/gnome-calculator-48.alpha.tar.xz
  ref: 46773ca2c004919696bb8cd437bf2cbf3cc142cc4ffa22f470f776f8f38ad994
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
