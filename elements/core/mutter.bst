kind: meson
sources:
- kind: tar
  url: gnome_downloads:mutter/3.34/mutter-3.34.4.tar.xz
  ref: 0134513515f605dd0858154d0b54d2e23c5779d52590533e266d407251e20ba2
depends:
- core/gnome-settings-daemon.bst
- core-deps/startup-notification.bst
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
- filename: components/xorg-lib-xcursor.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-server.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
- filename: components/dummy-gbm.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dprofiler=false -Dremote_desktop=false
