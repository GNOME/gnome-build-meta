kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-menus.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
