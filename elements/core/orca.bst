kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.35/orca-3.35.91.tar.xz
  ref: 06e0d987d9600e96941cc672e1aa4f56715e61de9ad3c2826bfebc962e874e29
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi2.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-atk.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
