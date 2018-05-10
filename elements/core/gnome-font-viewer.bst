kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-font-viewer
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
