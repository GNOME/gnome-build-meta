kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/cantarell-fonts/0.111/cantarell-fonts-0.111.tar.xz
depends:
- sdk/appstream-glib.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
