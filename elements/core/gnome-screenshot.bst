kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-screenshot
  track: master
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
