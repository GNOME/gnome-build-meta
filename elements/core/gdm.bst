kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdm/3.30/gdm-3.30.1.tar.xz
  ref: 4b3d11856adf9fc26b43b2742c196e9e9dc2d2a5eff8bb34d906537288e2732f
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
