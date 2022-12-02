kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-logs.git
  track: master
  ref: gnome-logs-43.0-8-g935672d496100283200c4610c0a035e44bf361b8

build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
