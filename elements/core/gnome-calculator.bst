kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/49/gnome-calculator-49.1.tar.xz
  ref: 5da02b87d913c3d72cb606afbbfb308479cde48dc4e1a1d54c049a1e86ca607e
build-depends:
- sdk/blueprint-compiler.bst
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
