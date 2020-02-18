kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.201/cantarell-fonts-0.201.tar.xz
  ref: b61f64e5f6a48aa0abc7a53cdcbce60de81908ca36048a64730978fcd9ac9863
depends:
- filename: sdk/appstream-glib.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
