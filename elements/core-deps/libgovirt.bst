kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgovirt/0.3/libgovirt-0.3.6.tar.xz
depends:
- core-deps/librest.bst
- sdk/gobject-introspection.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
