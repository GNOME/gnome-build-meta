kind: cmake
sources:
- kind: tar
  url: github_com:libical/libical/releases/download/v3.0.5/libical-3.0.5.tar.gz
  ref: 7ad550c8c49c9b9983658e3ab3e68b1eee2439ec17b169a6b1e6ecb5274e78e6
depends:
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/libxml2.bst
  junction: freedesktop-sdk.bst
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DENABLE_GTK_DOC=OFF -DGOBJECT_INTROSPECTION=ON -DICAL_GLIB=ON -DICAL_GLIB_VAPI=ON
