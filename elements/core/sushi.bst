kind: autotools
sources:
- kind: git
  url: git_gnome_org:sushi
  track: master
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
