kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-shell/3.29/gnome-shell-3.29.4.tar.xz
  ref: 2bb10bd562b38d100fa3a9cb8188f494ede9fff50cbb9f15c25967c4330037ef
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
- core-deps/sassc.bst
- core-deps/startup-notification.bst
- core-deps/upower.bst
- core/adwaita-icon-theme.bst
- core/gdm.bst
- core/gnome-bluetooth.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/mutter.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
