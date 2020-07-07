kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/3.36/gnome-calculator-3.36.0.tar.xz
  ref: a2e830f9c9856fad65dad1d6c0ae6abad0f0b496c9984ac005315c5cc4220db3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/libgee.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
