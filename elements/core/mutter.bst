kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/mutter/3.30/mutter-3.30.2.tar.xz
  ref: df24dcc0b866fc6bffbfc82881a84bd7cc9c641e4124d2545c368c0b10e12363
depends:
- core-deps/libgudev.bst
- core-deps/libinput.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- sdk/json-glib.bst
- sdk/pango.bst
- sdk/zenity.bst
- filename: desktop/xorg-lib-xcursor.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-compile-warnings=maximum --enable-installed-tests --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server --enable-kms-egl-platform
