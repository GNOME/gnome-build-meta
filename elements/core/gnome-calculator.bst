kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-calculator.git
  track: main
  ref: 51.0-2-gadf28d62c385d63e7e514917ef0be41e192eceac

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
