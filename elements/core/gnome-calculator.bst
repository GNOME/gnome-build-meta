kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/46/gnome-calculator-46.1.tar.xz
  ref: 2d36750a73890086122cf3f0c83e68517891585615165306fa1596a918668247
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
