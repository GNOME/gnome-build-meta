kind: autotools
sources:
- kind: tar
  url: gnome_downloads:clutter/1.26/clutter-1.26.2.tar.xz
depends:
- sdk/atk.bst
- sdk/cogl.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- filename: desktop/libxkbcommon.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
