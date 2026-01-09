kind: meson

sources:
- kind: tar
  url: gnome_downloads:libcloudproviders/0.4/libcloudproviders-0.4.0.tar.xz
  ref: 247b228d1027b2683868e7d7080d38693a457e908aadd0c119d52de59a398064
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
