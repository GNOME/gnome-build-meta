kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-tweaks.git
  track: master
depends:
- core-deps/librsvg.bst
- core-deps/pygobject.bst
- core/gnome-shell.bst
- core/nautilus.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
