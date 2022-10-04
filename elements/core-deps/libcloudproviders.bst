kind: meson

sources:
- kind: tar
  url: gnome_downloads:libcloudproviders/0.3/libcloudproviders-0.3.1.tar.xz
  ref: 4763213ca1e1fe30d422f5ae3b4f02a454f63414c1860ad142d6385f89d05929

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
