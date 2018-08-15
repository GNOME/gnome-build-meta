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
- core-deps/zenity.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/xorg-lib-xcursor.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 9516339eaf65395e0ffeb814a566e194ff00576af848e5761e3b3a441493860d
  url: https://download.gnome.org/sources/mutter/3.29/mutter-3.29.90.tar.xz
variables:
  conf-local: --enable-compile-warnings=maximum --enable-installed-tests --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server --enable-kms-egl-platform
