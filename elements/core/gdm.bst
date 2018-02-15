kind: autotools
sources:
- url: https://download.gnome.org/sources/gdm/3.27/gdm-3.27.90.tar.xz
  kind: tar
  ref: 7bc4290db3142a754181751b06b135f6c96dfdfce94e8e3f01721919204b2ff1
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
