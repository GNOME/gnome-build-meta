kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.36/orca-3.36.3.tar.xz
  ref: 168ce1dfc3fc4bad992640639e0e00a0c450522b5d336e2ea6926dda3dcb1df4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-atk.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
