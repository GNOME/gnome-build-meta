kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/49/gnome-calculator-49.alpha.tar.xz
  ref: 1a840cd193e86adb7618b3741d32477cb2f2a64c2691c0cd5f15845dacfd4335
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
