kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-calculator.git
  track: master
  ref: 45.beta-25-g55f320c2021407a2aa4e8875b5d18edbfc3e6c24

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
