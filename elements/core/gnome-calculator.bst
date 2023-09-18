kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/45/gnome-calculator-45.0.2.tar.xz
  ref: 7dcbf32384897171cbe5483ec664d994e5e755e912ae1df911624f03c90867c2
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
