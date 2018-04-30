kind: autotools
sources:
- kind: git
  url: git_gnome_org:vino
  track: master
depends:
- core-deps/NetworkManager.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- base.bst
