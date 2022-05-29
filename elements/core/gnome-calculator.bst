kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/42/gnome-calculator-42.1.tar.xz
  ref: ef4d24e42a65dc860e6206f3b470b7d233c2ae2a4d4965d8859aa9ea8a395acd
build-depends:
- sdk/appstream-glib.bst
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
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
