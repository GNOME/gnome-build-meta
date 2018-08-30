kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/sushi/3.28/sushi-3.28.3.tar.xz
  ref: 3c2e5ae4a6553563fb06bcc3bd59b61a6d891cc9a3fad724f805e483c968cdfb
depends:
- core-deps/gtksourceview-3.bst
- core-deps/libmusicbrainz.bst
- core/evince.bst
- sdk/WebKitGTK+.bst
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gjs.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
