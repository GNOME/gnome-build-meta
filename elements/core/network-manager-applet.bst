depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/ModemManager.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libgudev.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/mobile-broadband-provider-info.bst
- core/adwaita-icon-theme.bst
- core/gnome-bluetooth.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 62a3a1d1a810d286f44484b8405cbacbe17f44b050fffce6ae3a51ef099cb452
  url: https://download.gnome.org/sources/network-manager-applet/1.8/network-manager-applet-1.8.16.tar.xz
variables:
  conf-local: --enable-more-warnings=no --disable-migration --without-bluetooth --without-team
    --without-selinux --without-libnm-gtk
