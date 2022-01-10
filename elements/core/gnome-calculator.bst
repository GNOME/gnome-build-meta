kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/42/gnome-calculator-42.alpha.tar.xz
  ref: 7ed3c3d0aba0e20ad70fabb52a422488045c6dbb59f2edf31ddc0b3f5dcc8c5e
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
