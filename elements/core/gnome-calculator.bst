kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/45/gnome-calculator-45.beta.tar.xz
  ref: a55ecd410891f9e0d3d4cdb9367c9e3368942c86db562ede663378abeb77e2c1
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
