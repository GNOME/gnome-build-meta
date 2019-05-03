kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-dictionary.git
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
