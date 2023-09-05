kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/45/gnome-calculator-45.0.1.tar.xz
  ref: 6a18d4a2896e1484e3dc713e0666020669a580b740192f754d5fb561b3d07772
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
