kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/cantarell-fonts/0.301/cantarell-fonts-0.301.tar.xz
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Duseprebuilt=true
