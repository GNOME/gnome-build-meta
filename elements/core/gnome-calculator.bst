kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/51/gnome-calculator-51.0.tar.xz
  ref: 5bfb4c53eec61feb6c03faf85218804e87413ecb647e08fde6379bf2b1839190
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
