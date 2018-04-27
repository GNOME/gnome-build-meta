kind: autotools
sources:
- kind: git
  url: git_gnome_org:gdm
  track: master
depends:
- core-deps/accountsservice.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- core-deps/upower.bst
- sdk/yelp-tools.bst
- base.bst
variables:
  conf-local: --with-plymouth=no
