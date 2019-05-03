kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/tali.git
  track: master
depends:
- sdk/gtk+-3.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
