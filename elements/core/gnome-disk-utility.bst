kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/3.35/gnome-disk-utility-3.35.2.tar.xz
  ref: 14268385d2cfc5e2e916ffa515168921f414a0a912263c61ed8489d95ac892b4
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
