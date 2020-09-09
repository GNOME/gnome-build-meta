kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.36/orca-3.36.6.tar.xz
  ref: 18ef9a930a78c8030558b0d4145f7278ccf3e09911d00d88173e40f325feb3f0
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
