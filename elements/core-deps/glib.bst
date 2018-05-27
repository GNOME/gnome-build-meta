kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:glib
  track: master
depends:
- core-deps/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-installed-tests --disable-libmount
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
