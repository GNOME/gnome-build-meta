kind: cmake

sources:
- kind: tar
  url: github_com:libical/libical/releases/download/v3.0.8/libical-3.0.8.tar.gz

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libxml2.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/perl.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

variables:
  cmake-local: >-
    -DGOBJECT_INTROSPECTION=ON
    -DENABLE_GTK_DOC=OFF
    -DICAL_GLIB=ON
    -DICAL_GLIB_VAPI=ON
