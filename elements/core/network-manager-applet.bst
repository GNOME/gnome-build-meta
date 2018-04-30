kind: autotools
sources:
- kind: git
  url: git_gnome_org:network-manager-applet
  track: master
depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/mobile-broadband-provider-info.bst
- core/gnome-bluetooth.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libgudev.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- base.bst
variables:
  conf-local: --enable-more-warnings=no --disable-migration --without-bluetooth --without-team
    --without-selinux
