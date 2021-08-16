kind: meson

sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.13/gexiv2-0.13.0.tar.xz
  ref: e434b6b79f47655c7f42917e4bd9ef6344645df161eeaf30dc742aba09f8e24d

build-depends:
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
