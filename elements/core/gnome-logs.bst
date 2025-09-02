kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-logs/49/gnome-logs-49.rc.tar.xz
  ref: 160a822ff3765a097ac45b1b452c8665a8cc245405d421f9ff164c936ab7855e
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
