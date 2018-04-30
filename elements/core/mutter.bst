kind: autotools
sources:
- kind: git
  url: git_gnome_org:mutter
  track: master
depends:
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- sdk/json-glib.bst
- sdk/libgudev.bst
- sdk/libinput.bst
- sdk/pango.bst
- sdk/wayland.bst
- base.bst
variables:
  conf-local: --enable-compile-warnings=maximum --enable-installed-tests --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server --enable-kms-egl-platform
