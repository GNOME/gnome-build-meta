kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/quadrapassel.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/librsvg.bst
- sdk/vala.bst
- world/libmanette.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
