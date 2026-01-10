kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-logs/49/gnome-logs-49.0.tar.xz
  ref: f8f579eb0bb6d9a8d6ae5ee1423f9447af91200785178b50bbadd4ac2d255d45
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
