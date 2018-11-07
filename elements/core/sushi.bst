kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/sushi/3.30/sushi-3.30.0.tar.xz
  ref: d2da55498770c7b6bb7858aa1eef5c591fcbbf36aa24fc879f8e8c930b8fea7e
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
- sdk/gtk+-3.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
