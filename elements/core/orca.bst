kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/48/orca-48.alpha.tar.xz
  ref: ec3be11de440328fdc2faa30d52d0d14233ec445cf9bf393baa7e2a410d51a61
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
