kind: meson

sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 51.1-51-g72850d15a0dbb1c04d76b8530ef25b50e3ff3260

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- core-deps/brltty.bst
- core-deps/dasbus.bst
- core-deps/pyatspi.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk-extra.bst:components/speech-dispatcher.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmathcat=false
