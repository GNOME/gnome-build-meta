kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgee
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
