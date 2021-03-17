kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/40/gnome-disk-utility-40.rc.tar.xz
  ref: 20a4c74cae760aafe3a4ed02ed3a47a2bd3f55e6fe069a74e4ba969eac48bb18
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
- sdk/libhandy.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dlibelogind=disabled
