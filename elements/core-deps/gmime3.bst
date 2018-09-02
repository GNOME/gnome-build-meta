kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gmime
  track: master
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
