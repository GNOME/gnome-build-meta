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
kind: autotools
sources:
- kind: tar
  ref: e02a0998b580b05dae16a398ec68f94d7281517126be7727c9b86fc8aecac71f
  url: https://download.gnome.org/sources/gdm/3.29/gdm-3.29.91.tar.xz
variables:
  conf-local: --with-plymouth=no
