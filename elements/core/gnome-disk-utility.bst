kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.36/gnome-disk-utility-3.36.0.tar.xz
  ref: f4079a9404fb583d5f13a2c04cd9e91cd6a19677ace931839a9ad3b9514db103
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
  meson-local: >-
    -Dlibelogind=disabled
