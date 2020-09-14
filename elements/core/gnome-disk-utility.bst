kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.38/gnome-disk-utility-3.38.0.tar.xz
  ref: 7734ce668d9ec31286abd7944f95190210288fbc54704f05bc55cbd0340b5223
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
