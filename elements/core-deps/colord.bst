kind: meson
sources:
- kind: git
  url: github_com:hughsie/colord.git
  track: master
depends:
- filename: core-deps/argyll.bst
  type: build
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libgudev.bst
- core-deps/libgusb.bst
- core-deps/meson.bst
- core-deps/vala.bst
- base.bst
variables:
  meson-local: -Denable-bash-completion=false -Denable-vala=true
