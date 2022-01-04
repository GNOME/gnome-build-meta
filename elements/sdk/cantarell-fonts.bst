kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.303/cantarell-fonts-0.303.1.tar.xz
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Duseprebuilt=true
