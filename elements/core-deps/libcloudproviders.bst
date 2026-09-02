kind: meson

sources:
- kind: tar
  url: gnome_downloads:libcloudproviders/0.4/libcloudproviders-0.4.1.tar.xz
  ref: 3e123fa2a34f6dfd99897ebe5fec3dfa35d9cf4b192c28fe7fc90c5aafafcf5b
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
