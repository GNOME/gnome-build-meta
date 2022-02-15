kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/42/gnome-calculator-42.beta.tar.xz
  ref: f67aee51cfd097da5d27bb94fe8d090a4a68a5f77dd1ba0be5f3785fa2852aed
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
