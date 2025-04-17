kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-calculator.git
  track: main
  ref: 48.0-161-g6835d08272a9a08e2c0dc3628321dd9af582f491

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
