kind: meson
sources:
- kind: git
  url: github_com:hughsie/colord.git
  track: master
- kind: patch
  path: files/colord/dont-require-docbook2man.patch
depends:
- filename: core-deps/argyll.bst
  type: build
- core-deps/libgusb.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libgudev.bst
- sdk/polkit.bst
- sdk/vala.bst
- base.bst
variables:
  meson-local: |
    -Dbash_completion=false \
    -Dvapi=true
