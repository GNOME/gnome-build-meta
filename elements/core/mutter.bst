kind: autotools
sources:
- url: https://download.gnome.org/sources/mutter/3.28/mutter-3.28.0.tar.xz
  kind: tar
  ref: 58fffc8025f21fb6da27bd2189b6db4d20c54f950b1a46aa7f7cbf0a82d386b0
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
- core-deps/upower.bst
- core-deps/wayland.bst
- core-deps/zenity.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  conf-local: --enable-compile-warnings=maximum --enable-installed-tests --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server --enable-kms-egl-platform
