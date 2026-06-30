kind: cmake
description: |
  Libical: an Open Source implementation of the iCalendar protocols and protocol data units.

  This element provides version 3 of libical. This is superceded by version 4.0
  (which is provided by freedesktop-sdk.bst:components/libical.bst) but for now
  evolution-data-server still expects version 3.

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libxml2.bst

variables:
  cmake-local: >-
    -DGOBJECT_INTROSPECTION=ON
    -DENABLE_GTK_DOC=OFF
    -DICAL_GLIB=ON
    -DICAL_GLIB_VAPI=ON

sources:
- kind: git_repo
  url: github:libical/libical.git
  track: v3.*
  ref: v3.0.20-0-g57ce34025066935f356fd539e6deb7a7a9952618
