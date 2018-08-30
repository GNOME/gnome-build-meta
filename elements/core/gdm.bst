kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdm/3.29/gdm-3.29.91.tar.xz
  ref: e02a0998b580b05dae16a398ec68f94d7281517126be7727c9b86fc8aecac71f
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
