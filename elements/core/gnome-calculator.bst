kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/46/gnome-calculator-46.0.tar.xz
  ref: 44694fda6b6233923f5c10a48d02d2cf5724e011a8a85789074c953101f33bf1
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
