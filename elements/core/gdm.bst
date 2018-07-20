kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdm/3.29/gdm-3.29.1.tar.xz
  ref: 68a622054047718dbe1ef85b15c4a16db6bd5375a15a7a392979cffbe37b9dae
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
