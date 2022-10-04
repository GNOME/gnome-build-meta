kind: meson

sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.14/gexiv2-0.14.0.tar.xz
  ref: e58279a6ff20b6f64fa499615da5e9b57cf65ba7850b72fafdf17221a9d6d69e

build-depends:
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
