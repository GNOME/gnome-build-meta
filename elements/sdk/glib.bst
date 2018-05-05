kind: autotools
sources:
- kind: git
  url: git_gnome_org:glib
  track: master
depends:
- filename: sdk/gtk-doc.bst
  type: build
- base.bst
variables:
  conf-local: --enable-installed-tests --disable-libmount
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
