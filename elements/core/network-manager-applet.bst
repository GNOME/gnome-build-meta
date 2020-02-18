kind: autotools
sources:
- kind: tar
  url: gnome_downloads:network-manager-applet/1.8/network-manager-applet-1.8.24.tar.xz
  ref: 118bbb8a5027634b62e8b45b16ceafce74441529c99bf230654e3bec38f9fbbf
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
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libnotify.bst
- sdk/libsecret.bst
- filename: components/iso-codes.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-more-warnings=no --disable-migration --without-bluetooth --without-team
    --without-selinux --without-libnm-gtk
