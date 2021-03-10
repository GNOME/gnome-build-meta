kind: meson
sources:
- kind: tar
  url: people_freedesktop_org:~hughsient/releases/libgusb-0.3.5.tar.xz
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
