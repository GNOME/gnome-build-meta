kind: autotools
sources:
- url: https://download.gnome.org/sources/network-manager-applet/1.8/network-manager-applet-1.8.10.tar.xz
  kind: tar
  ref: 0adc4bfae8b49f7a1d929c22ef20933bd41fb4a8b458280f44c65f9e45b4c9c3
depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- core-deps/libgudev.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/mobile-broadband-provider-info.bst
- core/gnome-bluetooth.bst
- base.bst
variables:
  conf-local: --enable-more-warnings=no --disable-migration --without-bluetooth --without-team
    --without-selinux
