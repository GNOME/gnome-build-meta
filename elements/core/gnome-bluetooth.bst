kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:gnome-bluetooth
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core-deps/libcanberra.bst
- core-deps/libnotify.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
