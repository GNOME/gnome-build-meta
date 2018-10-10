kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/mutter
  track: master
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
- filename: sdk/gtk-doc.bst
  type: build
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
  conf-local: |
    --enable-compile-warnings=maximum \
    --enable-installed-tests \
    --enable-xlib-egl-platform \
    --enable-wayland-egl-platform \
    --enable-wayland-egl-server \
    --enable-kms-egl-platform
