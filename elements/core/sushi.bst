kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/sushi/3.30/sushi-3.30.0.tar.xz
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
