kind: meson

sources:
- kind: tar
  url: phosh:feedbackd/feedbackd-0.8.4.tar.xz
  ref: b0b5b22216940b485d0d43679dce403583e33438f06c49a83cf1820cdbbca174
- kind: tar
  url: phosh:gmobile/gmobile-0.1.0.tar.xz
  directory: subprojects/gmobile
  ref: 47172e7b245fbb30b40c02135d2ff36987e36a8e825f9bf5932acd2aa6eabfcd
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  # Introspection is currently broken with the newer version of
  # gobject-intrsopectin as it's more strict about things.
  # We only build feedbackd as a dependency of calls for now
  # and we don't ship it anywhere so disable introspection
  # unitl the issue is fixed.
  meson-local: >-
    -Dintrospection=disabled
    -Dtests=false
