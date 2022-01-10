kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-disk-utility/42/gnome-disk-utility-42.alpha.tar.xz
  ref: 94a625af4e19c2c4bd5120ee308c50c7f5f443c40cc71e0c90b2ec1c307fa399
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
