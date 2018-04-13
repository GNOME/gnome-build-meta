kind: autotools
sources:
- url: https://download.gnome.org/sources/glib/2.56/glib-2.56.1.tar.xz
  kind: tar
  ref: 40ef3f44f2c651c7a31aedee44259809b6f03d3d20be44545cd7d177221c0b8d
depends:
- core-deps/gtk-doc.bst
- base.bst
variables:
  conf-local: --enable-installed-tests --disable-libmount
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
