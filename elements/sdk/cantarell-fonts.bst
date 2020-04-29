kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.201/cantarell-fonts-0.201.tar.xz
build-depends:
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Duseprebuilt=true
