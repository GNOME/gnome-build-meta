kind: autotools
sources:
- kind: git
  url: git_gnome_org:mutter
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core-deps/json-glib.bst
- core-deps/libgudev.bst
- core-deps/libinput.bst
- core-deps/pango.bst
- core-deps/wayland.bst
- core-deps/zenity.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- core/upower.bst
- base.bst
variables:
  conf-local: --enable-compile-warnings=maximum --enable-installed-tests --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server --enable-kms-egl-platform
