kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/45/gnome-calculator-45.alpha.tar.xz
  ref: 8948dce4fa82de7dabd48880398b805707c2bb42a58a5c6fea3c52e8e6680cd3
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
