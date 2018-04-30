kind: autotools
sources:
- kind: git
  url: git_gnome_org:gdm
  track: master
depends:
- core-deps/accountsservice.bst
- core-deps/upower.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/yelp-tools.bst
- base.bst
variables:
  conf-local: --with-plymouth=no
