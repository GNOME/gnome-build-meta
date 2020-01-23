kind: cmake
sources:
- kind: tar
  url: github_com:libical/libical/releases/download/v3.0.7/libical-3.0.7.tar.gz
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: >-
    -DENABLE_GTK_DOC=OFF
    -DGOBJECT_INTROSPECTION=ON
    -DICAL_GLIB=ON
    -DICAL_GLIB_VAPI=ON
