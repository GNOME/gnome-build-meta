kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/51/gnome-calculator-51.rc.tar.xz
  ref: db80a035790642e6f1b25ca51bc64cca2eeb1aa5c7660fd4c1325aa2bbca1d81
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst

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
