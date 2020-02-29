kind: meson
sources:
- kind: tar
  url: people_freedesktop_org:~hughsient/releases/libgusb-0.3.4.tar.xz
  ref: f93942585b7dfe7628415e1d504d9f6cf2cc1c42f1df2c8f7aa104111068eb92
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libusb.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
