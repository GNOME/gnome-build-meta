kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/mutter/3.28/mutter-3.28.2.tar.xz
  ref: affa89b9c2b8fe500b7bc560ab1121fea80f90787bc0b04dc04f6bba7fd0f045
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
