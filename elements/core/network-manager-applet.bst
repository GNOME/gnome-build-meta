kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/network-manager-applet
  track: master
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
