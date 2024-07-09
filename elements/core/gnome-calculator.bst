kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/47/gnome-calculator-47.alpha.tar.xz
  ref: 3e00b65ed24a62dbedc985b109ba735ce476fe9ee63b55c92cf4bd4ec1873f23
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
