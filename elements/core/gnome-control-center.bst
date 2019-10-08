kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-control-center/3.34/gnome-control-center-3.34.1.tar.xz
depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/colord-gtk.bst
- core-deps/colord.bst
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/gsound.bst
- core-deps/libgnomekbd.bst
- core-deps/libgtop.bst
- core-deps/libhandy.bst
- core-deps/libwacom.bst
- core-deps/samba.bst
- core-deps/upower.bst
- core-deps/udisks2.bst
- core/cheese.bst
- core/gnome-bluetooth.bst
- core/gnome-color-manager.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/network-manager-applet.bst
- sdk/adwaita-icon-theme.bst
- sdk/clutter-gtk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/ibus.bst
- filename: components/pwquality.bst
  junction: freedesktop-sdk.bst
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocumentation=true
