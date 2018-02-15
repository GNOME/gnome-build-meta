kind: autotools
sources:
- url: https://download.gnome.org/sources/gsettings-desktop-schemas/3.27/gsettings-desktop-schemas-3.27.90.tar.xz
  kind: tar
  ref: 7a9fed43c4377b6e55da62b2713b3df75f0809679bf8293451a2f420675c7fbf
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- base.bst
variables:
  conf-local: --enable-introspection=yes
