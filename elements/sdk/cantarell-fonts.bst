kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.201/cantarell-fonts-0.201.tar.xz
  ref: b61f64e5f6a48aa0abc7a53cdcbce60de81908ca36048a64730978fcd9ac9863
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: -Duseprebuilt=true
