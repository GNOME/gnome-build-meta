kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-session/3.27/gnome-session-3.27.90.1.tar.xz
  kind: tar
  ref: e2372453111309d5f82bbfc2f82a069838d69827256b611cf1bf441856d5ea21
depends:
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/meson.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- base.bst
