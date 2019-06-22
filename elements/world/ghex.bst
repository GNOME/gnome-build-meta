kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/ghex.git
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
