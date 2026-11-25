kind: meson

sources:
- kind: tar
  url: gnome_downloads:libcloudproviders/0.4/libcloudproviders-0.4.2.tar.xz
  ref: 935e3768a7e549a40ffc8a26c0de719c6c36ad9c055a13ecefe3ea9a9bc9feab
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
