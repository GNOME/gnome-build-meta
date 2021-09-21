kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.301/cantarell-fonts-0.301.tar.xz
  ref: 3d35db0ac03f9e6b0d5a53577591b714238985f4cfc31a0aa17f26cd74675e83
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Duseprebuilt=true
