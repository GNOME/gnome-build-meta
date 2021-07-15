kind: meson
sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.12/gexiv2-0.12.2.tar.xz
  ref: 2322b552aca330eef79724a699c51a302345d5e074738578b398b7f2ff97944c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/exiv2.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
