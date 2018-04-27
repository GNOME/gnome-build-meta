kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-shell
  track: master
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- sdk/dconf.bst
- core-deps/evolution-data-server.bst
- sdk/gcr.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/libcroco.bst
- core-deps/libgnomekbd.bst
- sdk/libsoup.bst
- core-deps/sassc.bst
- core-deps/startup-notification.bst
- core-deps/upower.bst
- sdk/adwaita-icon-theme.bst
- core/gdm.bst
- core/gnome-bluetooth.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/mutter.bst
- base.bst
