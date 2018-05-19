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
- core-deps/libgudev.bst
- core-deps/libgusb.bst
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst

variables:
  meson-local: |
    -Dbash_completion=false \
    -Dvapi=true
