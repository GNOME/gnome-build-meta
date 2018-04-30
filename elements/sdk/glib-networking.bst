kind: meson
sources:
- kind: git
  url: git_gnome_org:glib-networking
  track: master
depends:
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Dinstalled_tests=true
