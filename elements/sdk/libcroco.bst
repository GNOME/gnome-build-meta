kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libcroco
  track: master
depends:
- sdk/glib.bst
- sdk/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
