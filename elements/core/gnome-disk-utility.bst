kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/41/gnome-disk-utility-41.0.tar.xz
  ref: 8743c98fd656062ef862933efe30c5be4c6b322ec02eee154ec70d08ed0895df
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libdvdread.bst
- core-deps/udisks2.bst
- core/gnome-settings-daemon.bst
- sdk/adwaita-icon-theme.bst
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
