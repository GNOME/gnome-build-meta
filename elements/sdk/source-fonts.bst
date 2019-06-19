kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.101/cantarell-fonts-0.101.tar.xz
depends:
- sdk/appstream-glib.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
