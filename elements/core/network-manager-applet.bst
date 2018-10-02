kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/network-manager-applet/1.8/network-manager-applet-1.8.18.tar.xz
  ref: 23dc1404f1e0622b7c4718b6d978b101d5e4d9be0b92133b3863a4dc29786178
depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/libgudev.bst
- core-deps/mobile-broadband-provider-info.bst
- core/gnome-bluetooth.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-more-warnings=no --disable-migration --without-bluetooth --without-team
    --without-selinux --without-libnm-gtk
