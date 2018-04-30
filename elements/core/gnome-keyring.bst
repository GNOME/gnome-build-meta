kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-keyring
  track: master
depends:
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- base.bst
