kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/tali.git
  track: master
depends:
- sdk/gtk+-3.bst
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
