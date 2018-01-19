kind: autotools
sources:
- kind: git
  url: git_gnome_org:gdm
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- core/accountsservice.bst
- core/dconf.bst
- core/upower.bst
- base.bst
variables:
  conf-local: ''
