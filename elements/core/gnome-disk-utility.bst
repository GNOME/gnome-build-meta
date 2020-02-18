kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.34/gnome-disk-utility-3.34.4.tar.xz
  ref: 1ec5a365292016572d336c31b252f726dd86655b0a93eab7be3b3c18ab8bf75c
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
