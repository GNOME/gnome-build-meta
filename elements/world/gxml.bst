kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gxml.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/meson.bst
- core-deps/vala.bst
- core-deps/gobject-introspection.bst
- base.bst
variables:
  meson-local: -Dwith_sysmon=false -Dwith_sysprof=false
