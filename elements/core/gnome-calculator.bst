kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/51/gnome-calculator-51.beta.tar.xz
  ref: d44e308c988f8847073b82358678157d036f1efdd4cb3f6e84f3e508e7845b1e
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
