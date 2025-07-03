kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/47/orca-47.5.tar.xz
  ref: 7112f66693e2b5f8422de6c506741a8f7ea130d516035873a8b1ca73bba53c2b
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
