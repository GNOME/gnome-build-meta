kind: meson
sources:
- kind: git
  url: github_com:hughsie/fwupd
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/gcab.bst
- core-deps/glib.bst
- core-deps/libgudev.bst
- core-deps/libgusb.bst
- core-deps/libgusb.bst
- core-deps/libsoup.bst
- core-deps/meson.bst
- base.bst
variables:
  meson-local: -Denable-colorhug=false -Denable-dell=false -Denable-synaptics=false
