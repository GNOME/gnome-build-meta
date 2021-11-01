kind: meson
sources:
- kind: tar
  url: people_freedesktop_org:~hughsient/releases/libgusb-0.3.8.tar.xz
  ref: 6d7092ec4e8e4405e75d4c8799512f2c31cdb0d7a8381ee37d1015a4c4fc8407
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
