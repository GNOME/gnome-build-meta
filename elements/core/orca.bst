kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/46/orca-46.alpha.tar.xz
  ref: 9908f4ca035ff6e6807d112af22d7b780e298a897ba64621b4cf120bfc4623d0
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
