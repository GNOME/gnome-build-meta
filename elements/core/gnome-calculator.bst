kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/51/gnome-calculator-51.alpha.tar.xz
  ref: 97cb890704b55a9a5d6fc1b446a4d10ee22c10e1768a74d610acc256f004a551
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst

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
