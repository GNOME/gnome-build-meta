kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libsecret
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
