kind: meson

sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.14/gexiv2-0.14.5.tar.xz
  ref: 0913c53daabab1f1ab586afd55bb55370796f2b8abcc6e37640ab7704ad99ce1
build-depends:
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
