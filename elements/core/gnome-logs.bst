kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-logs/45/gnome-logs-45.0.tar.xz
  ref: b28a06ea5c98bd17f2873b507f085b0ca0de9810136611f4f2eeb098614ece52
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
