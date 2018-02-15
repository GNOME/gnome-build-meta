kind: autotools
sources:
- url: https://download.gnome.org/sources/mutter/3.27/mutter-3.27.1.tar.xz
  kind: tar
  ref: ce8155d99b7e2041447351aab0a6fd68baae28e6c3c57288b8c6c7bab195ffe9
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
