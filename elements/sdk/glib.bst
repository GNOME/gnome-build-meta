kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/glib
  track: master
depends:
- sdk/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dinstalled-tests=true -Dselinux=false
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
