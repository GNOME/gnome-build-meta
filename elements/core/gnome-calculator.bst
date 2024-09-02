kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-calculator.git
  track: main
  ref: 47.rc-9-gaa603d21f76fdd1efd4d79e449672c1df3a30d21

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
