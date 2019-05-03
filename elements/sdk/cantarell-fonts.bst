kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.111/cantarell-fonts-0.111.tar.xz
depends:
- sdk/appstream-glib.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
