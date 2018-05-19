kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libsecret
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
