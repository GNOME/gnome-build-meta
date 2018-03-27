kind: meson
sources:
- kind: git
  url: github_com:hughsie/colord.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libgudev.bst
- core-deps/libgusb.bst
- core-deps/meson.bst
- core-deps/vala.bst
- base.bst

variables:
  meson-local: |
    -Dbash-completion=false \
    -Dvapi=true
