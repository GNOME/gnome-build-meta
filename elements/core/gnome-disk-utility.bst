kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/40/gnome-disk-utility-40.0.tar.xz
  ref: 9f9c72f4453c9f6cb0ff9d9deeec67703e11b0736d826f7d025cf6a686ef4897
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
