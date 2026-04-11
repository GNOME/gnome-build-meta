kind: meson

sources:
- kind: git_repo
  url: freedesktop:agx/feedbackd.git
  track: 'v*.*.*'
  ref: v0.8.4-0-g69a4ee2538029b97a4bf3a3cd011cd3922e2f3f9

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gmobile.bst
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
