kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-control-center.git
  track: main
  ref: 45.beta-57-g481465bd387ef237fdc193e546ee8d0328b267e3
- kind: git_module
  url: gnome:libgnome-volume-control.git
  path: subprojects/gvc
  ref: dbfbacc9571fade87855907b78c6ed5e27c910dd

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/power-profiles-daemon.bst
- core/tecla.bst

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
- core/gnome-bluetooth.bst
- core/gnome-color-manager.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libwacom.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddocumentation=true
    -Dmalcontent=true
