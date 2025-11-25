kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/49/gnome-calculator-49.2.tar.xz
  ref: ddf4cd2edda135c41c8af68f9c0cdcd9d9a9163cb9f7f8e28ca2c8e81fd87657
build-depends:
- sdk/blueprint-compiler.bst
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
