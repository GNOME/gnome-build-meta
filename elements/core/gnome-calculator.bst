kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/42/gnome-calculator-42.rc.tar.xz
  ref: d6ab90ab288341cfd6418024993e45756f3e7acf02552576207f6ad51e6a0650
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
