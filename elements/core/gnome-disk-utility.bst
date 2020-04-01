kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.36/gnome-disk-utility-3.36.1.tar.xz
  ref: 791b18f231bcbc6d941af3837ca5be14f2157e5ce3d32bdc5b9eb8947e12b414
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
