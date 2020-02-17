kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.35/gnome-disk-utility-3.35.91.tar.xz
  ref: cb27c0edf6c56d1aa4544c6436d6a60a6584a4504872b6e8baa6c4118024d1c2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
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
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: -Dlibelogind=disabled
