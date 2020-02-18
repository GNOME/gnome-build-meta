kind: meson
sources:
- kind: tar
  url: gnome_downloads:libdazzle/3.34/libdazzle-3.34.1.tar.xz
  ref: 3d981cbb9d9bb87bfaff7bfd44d9847223b3ef81e69225e4d1f6ac725a669505
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
