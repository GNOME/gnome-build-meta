kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libcroco
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
