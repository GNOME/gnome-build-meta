kind: meson

sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.13/gexiv2-0.13.0.tar.xz

build-depends:
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
