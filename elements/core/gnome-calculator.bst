kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/41/gnome-calculator-41.1.tar.xz
  ref: 0267614afdb25d38b78411b42ebab7bc50c1b6340cc49bb68c0e432d7ddf8a34
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
- sdk/gtksourceview-4.bst
- sdk/libgee.bst
- sdk/libhandy.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
