kind: meson

sources:
- kind: tar
  url: https://source.puri.sm/Librem5/feedbackd/-/archive/v0.0.0+git20210426/feedbackd-v0.0.0+git20210426.tar.bz2

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
