kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.37/gnome-disk-utility-3.37.2.tar.xz
  ref: 1c998f554dfec8b423c685872353a5dbcf658c9f7ba477cac768a92563643308
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
