kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.36/gnome-disk-utility-3.36.3.tar.xz
  ref: dd033d3f36ab070bc72317cf3045e5b4927765543f1bce7612b2c7f96595167a
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
