kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-tweaks.git
  track: master
depends:
- core/gnome-shell.bst
- core/nautilus.bst
- sdk/librsvg.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
