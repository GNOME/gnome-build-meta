kind: meson

sources:
- kind: tar
  url: gnome_downloads:libcloudproviders/0.3/libcloudproviders-0.3.5.tar.xz
  ref: b987456eddaf715ba9d623aa2bc501ab1b697dffeb11aaa783a637275df186da

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
