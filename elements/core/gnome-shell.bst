kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-shell
  track: master
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/dconf.bst
- core-deps/evolution-data-server.bst
- core-deps/gcr.bst
- core-deps/gjs.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gst-plugins-base.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/libcroco.bst
- core-deps/libgnomekbd.bst
- core-deps/libsoup.bst
- core-deps/m4-common.bst
- core-deps/meson.bst
- core-deps/telepathy-glib.bst
- core-deps/telepathy-logger.bst
- core-deps/upower.bst
- core/adwaita-icon-theme.bst
- core/gdm.bst
- core/gnome-bluetooth.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/mutter.bst
- base.bst
