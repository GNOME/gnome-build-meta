kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-shell/3.30/gnome-shell-3.30.1.tar.xz
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/evolution-data-server.bst
- core-deps/libgnomekbd.bst
- core-deps/sassc.bst
- core-deps/startup-notification.bst
- core-deps/upower.bst
- core/gdm.bst
- core/gnome-bluetooth.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/mutter.bst
- sdk/adwaita-icon-theme.bst
- sdk/dconf.bst
- sdk/gcr.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/libcroco.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
