kind: meson

sources:
- kind: git_repo
  url: freedesktop:feedbackd/feedbackd.git
  track: 'v*.*.*'
  ref: v0.8.10-0-g05e685aad1147d399f0e8c7b091b160afeb4fb94

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

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
