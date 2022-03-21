kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/42/simple-scan-42.0.tar.xz
  ref: ac1f857afd0bc8897dd2045023ad7c5713e5ceefca56b0b3cc5e9a4795329586
- kind: patch
  path: files/simple-scan/0001-Fix-accessibility-conflict-of-constant-and-its-value.patch
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/colord-gtk.bst
- core-deps/libgusb.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
