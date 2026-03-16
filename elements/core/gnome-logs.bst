kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-logs/50/gnome-logs-50.0.tar.xz
  ref: b466c6660155521ba8135339c6df080a0e071a46f9911b99172b21f9e2dfd808
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
