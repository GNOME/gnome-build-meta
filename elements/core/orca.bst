kind: meson

sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 51.1-37-g828eaf2e70d7b88124b10b3a6b2daa792ab266c7

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
