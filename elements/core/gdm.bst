kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdm/3.28/gdm-3.28.1.tar.xz
  ref: 77068fa775bc2c002e85883c250103f6a77361d32ba0cb8a60997b70b397b2fb
depends:
- core-deps/accountsservice.bst
- core-deps/dconf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/upower.bst
- core-deps/yelp-tools.bst
- base.bst
variables:
  conf-local: ''
