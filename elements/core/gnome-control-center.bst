kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-control-center/3.35/gnome-control-center-3.35.91.tar.xz
  ref: 65056cec2d6596e264d21c94a2b3e9351c0c2c9b564353b11f1b36355560acb6
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
runtime-depends:
- core-deps/libgnomekbd.bst
depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/colord-gtk.bst
- core-deps/colord.bst
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/gsound.bst
- core-deps/libgtop.bst
- core-deps/libhandy.bst
- core-deps/libnma.bst
- core-deps/libwacom.bst
- core-deps/samba.bst
- core-deps/udisks2.bst
- core-deps/upower.bst
- core/cheese.bst
- core/gnome-bluetooth.bst
- core/gnome-color-manager.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/ibus.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocumentation=true
