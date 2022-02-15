kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/40/orca-40.2.tar.xz
  ref: 290fbfb8d4ef8a8934e9a0dd255f8c3568b680cb67854ac024e28f52c4bffdd9
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
