kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/network-manager-applet/1.8/network-manager-applet-1.8.14.tar.xz
  ref: ca9b1233721f700a7190b98eea69ce6d0ccf74fbfde173ac868a4ec7a78840cb
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
variables:
  conf-local: --enable-more-warnings=no --disable-migration --without-bluetooth --without-team
    --without-selinux --without-libnm-gtk
