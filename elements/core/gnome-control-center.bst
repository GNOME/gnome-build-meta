kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-control-center/51/gnome-control-center-51.alpha.tar.xz
  ref: 727d7fd0b7716a98da96fe1917abe6074c9f5b6f1c9023be68f2218f3bc43a10
- kind: git_repo
  url: gnome:libgxdp.git
  directory: subprojects/libgxdp
  ref: df896e3412b749947bc6f62a91a1aac8e6b6d19b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
# These two are more like runtime deps of the tests suite
- core-deps/setxkbmap.bst
- core-deps/xvfb.bst
- sdk/gtk-doc.bst
- sdk/blueprint-compiler.bst

runtime-depends:
- core-deps/power-profiles-daemon.bst

depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/colord-gtk.bst
- core-deps/colord.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gsound.bst
- core-deps/ibus-daemon.bst
- core-deps/libgtop.bst
- core-deps/libnma.bst
- core-deps/malcontent.bst
- core-deps/samba.bst
- core-deps/system-config-printer.bst
- core-deps/udisks2.bst
- core-deps/upower.bst
- core-deps/boltd.bst
- core/gnome-bluetooth.bst
- core/gnome-color-manager.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/tecla.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libwacom.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddocumentation=true
    -Dmalcontent=true
