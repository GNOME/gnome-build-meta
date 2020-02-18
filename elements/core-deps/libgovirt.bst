kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgovirt/0.3/libgovirt-0.3.7.tar.xz
  ref: 1266f011683a964729f53e74638c728d68537c1c102c8f27a01d2530e8e0f157
depends:
- core-deps/librest.bst
- sdk/gobject-introspection.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
