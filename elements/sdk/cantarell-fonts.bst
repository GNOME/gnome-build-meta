kind: meson
sources:
- kind: tar
  url: gnome_downloads:cantarell-fonts/0.111/cantarell-fonts-0.111.tar.xz
  ref: 858b2bc196ee851c8e5a76376097bc75f23bc01b29591c30ed3a550e23b41716
depends:
- filename: sdk/appstream-glib.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
