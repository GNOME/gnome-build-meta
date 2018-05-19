kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-tweaks.git
  track: master
depends:
- core/gnome-shell.bst
- core/nautilus.bst
- sdk/librsvg.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
