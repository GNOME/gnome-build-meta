kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gsettings-desktop-schemas
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-introspection=yes
