kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdm/3.30/gdm-3.30.1.tar.xz
depends:
- core-deps/accountsservice.bst
- core-deps/upower.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-plymouth=no
