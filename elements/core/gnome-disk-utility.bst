kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.34/gnome-disk-utility-3.34.5.tar.xz
  ref: 44f606ae543923b7f56f61bb2192f899a19099c292f5ad148fcc81f3351db06a
depends:
- core-deps/libdvdread.bst
- core-deps/udisks2.bst
- core/gnome-settings-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- filename: components/pwquality.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dlibelogind=disabled
