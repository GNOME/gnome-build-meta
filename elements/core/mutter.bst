kind: meson
sources:
- kind: tar
  url: gnome_downloads:mutter/3.34/mutter-3.34.6.tar.xz
  ref: 23bde87d33b8981358831cec8915bb5ff1eaf9c1de74c90cd1660b1b95883526
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
