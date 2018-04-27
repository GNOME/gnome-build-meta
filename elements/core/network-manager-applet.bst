kind: autotools
sources:
- kind: git
  url: git_gnome_org:network-manager-applet
  track: master
depends:
- core-deps/NetworkManager.bst
- sdk/glib.bst
- core-deps/ModemManager.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libgudev.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- core-deps/mobile-broadband-provider-info.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-bluetooth.bst
- base.bst
variables:
  conf-local: --enable-more-warnings=no --disable-migration --without-bluetooth --without-team
    --without-selinux
