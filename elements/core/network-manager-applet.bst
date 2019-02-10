kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/network-manager-applet/1.8/network-manager-applet-1.8.20.tar.xz
  ref: 050dbb155566c715239dc0378844d8beed10954e64e71014ecef8ca912df34ec
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
