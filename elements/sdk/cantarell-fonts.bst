kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.111/cantarell-fonts-0.111.tar.xz
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
