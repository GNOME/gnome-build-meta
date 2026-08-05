kind: meson

sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.14/gexiv2-0.14.7.tar.xz
  ref: 373b67b24f1a7b5c0606aaf0ea00b352f9511751e21deba0bac650bd5159c93d
build-depends:
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
