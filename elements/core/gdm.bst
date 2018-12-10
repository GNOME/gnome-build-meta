kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdm/3.30/gdm-3.30.2.tar.xz
  ref: be90ede158fd5d2ff0b97db617ffd77c1033964824cb04fcfac0865c8c6f56c1
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
