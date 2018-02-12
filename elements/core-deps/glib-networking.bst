kind: meson
sources:
- kind: git
  url: git_gnome_org:glib-networking
  track: master
depends:
- core-deps/glib.bst
- core-deps/meson.bst
- base.bst
variables:
  meson-local: -Dinstalled_tests=true -Dgnome_proxy_support=false
