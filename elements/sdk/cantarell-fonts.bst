kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.111/cantarell-fonts-0.111.tar.xz
depends:
- filename: sdk/appstream-glib.bst
  type: build
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
