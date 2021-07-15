kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/41/gnome-calculator-41.alpha.tar.xz
  ref: acb7c62c960e49b9ee2f68bd35fdbb2ba10a431b6e1fdf1f6865bddba3de4696
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/libgee.bst
- sdk/libhandy.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
