kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/48/gnome-calculator-48.1.tar.xz
  ref: bc4bd41a9ba190f45cbee0d8c6752cdc5d28b0cef1c6bd0c01e2dae1f3c19162
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
