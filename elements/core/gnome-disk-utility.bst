kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.38/gnome-disk-utility-3.38.1.tar.xz
  ref: d53b85dc1303a1b5ce1e421c1f5c6ac0b318e07cd9a95939d2e1f0959a5ed7d9
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
