kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.38/gnome-disk-utility-3.38.2.tar.xz
  ref: 10bedde5494beb34e3a220d6f30d9320c88252feeb8426bd98cefad1836d78e9
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
