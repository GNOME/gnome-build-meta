kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-logs/42/gnome-logs-42.0.tar.xz
  ref: 4d5e45169d6bf43902d7a9e9a0793c916eb92daba6ba85b35c8eb6f672cdabd7
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
