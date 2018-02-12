kind: autotools
sources:
- kind: git
  url: git_gnome_org:glib
  track: master
  ref: f8ee429db7f0f89464df0c622ba3950a8f21bf15
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
