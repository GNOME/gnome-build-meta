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
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libgudev.bst
- core-deps/libgusb.bst
- core-deps/polkit.bst
- core-deps/vala.bst
- base.bst
variables:
  meson-local: -Denable-bash-completion=false -Denable-vala=true
