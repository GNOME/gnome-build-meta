kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdm/3.30/gdm-3.30.0.tar.xz
  ref: 84d8faf065c3d6c2212301fa1efa8e63c94583118e5e5767b6c8180f42aeca5b
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
