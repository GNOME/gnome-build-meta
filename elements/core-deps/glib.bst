kind: autotools
sources:
- url: https://download.gnome.org/sources/glib/2.55/glib-2.55.2.tar.xz
  kind: tar
  ref: 5a26bfa83bb412d181504a0773101093c9e538c3d0e09d30f5178885d78e72f6
depends:
- core-deps/gettext.bst
- core-deps/gtk-doc.bst
- base.bst
variables:
  conf-local: --enable-installed-tests --disable-libmount
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
