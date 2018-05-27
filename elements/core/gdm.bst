kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gdm
  track: master
depends:
- core-deps/accountsservice.bst
- core-deps/dconf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libcanberra.bst
- core-deps/upower.bst
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-plymouth=no
