kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/50/gnome-calculator-50.alpha.tar.xz
  ref: d4c238e95907518df9ed436480f8f86e9e9d4554da61ac17dee8a565120c1449
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
