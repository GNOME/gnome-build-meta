kind: cmake
sources:
- kind: tar
  url: github_com:libical/libical/releases/download/v3.0.5/libical-3.0.5.tar.gz
depends:
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local:
    -DENABLE_GTK_DOC=OFF
    -DGOBJECT_INTROSPECTION=ON
    -DICAL_GLIB=ON
    -DICAL_GLIB_VAPI=ON
