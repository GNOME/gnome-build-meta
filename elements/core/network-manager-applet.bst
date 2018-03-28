kind: autotools
sources:
- kind: git
  url: git_gnome_org:network-manager-applet
  track: master
depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/ModemManager.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- core-deps/libgudev.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/mobile-broadband-provider-info.bst
- core/adwaita-icon-theme.bst
- core/gnome-bluetooth.bst
- base.bst
variables:
  conf-local: --enable-more-warnings=no --disable-migration --without-bluetooth --without-team
    --without-selinux
