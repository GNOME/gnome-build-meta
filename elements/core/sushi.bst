kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/sushi/3.28/sushi-3.28.3.tar.xz
  ref: 3c2e5ae4a6553563fb06bcc3bd59b61a6d891cc9a3fad724f805e483c968cdfb
depends:
- core-deps/WebKit.bst
- core-deps/clutter-gst.bst
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/gjs.bst
- core-deps/gobject-introspection.bst
- core-deps/gst-plugins-base.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- core/evince.bst
- base.bst
