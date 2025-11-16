kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:AdrianVovk/gnome-control-center.git
  track: homed
  ref: 49.0-147-g7cdc69d46209a7a20dae3725fcc2173db19591f2
- kind: git_module
  url: gnome:libgnome-volume-control.git
  path: subprojects/gvc
  ref: 91f3f41490666a526ed78af744507d7ee1134323
# FIXME: This needs to be kept in sync with the wrap file ideally,
# but this will do for now
# https://gitlab.gnome.org/GNOME/gnome-control-center/-/blob/main/subprojects/libgxdp.wrap
- kind: git_repo
  url: gnome:libgxdp.git
  directory: subprojects/libgxdp
  track: main
  ref: d5eca997aa2fea5af54fdd286d5c1e1aa7c76389

build-depends:
# These two are more like runtime deps of the tests suite
- core-deps/setxkbmap.bst
- core-deps/xvfb.bst
- sdk/gtk-doc.bst
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
    -Dcannot-add-users=true
