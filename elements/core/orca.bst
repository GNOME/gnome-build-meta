kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.36/orca-3.36.4.tar.xz
  ref: 9f47cedae2baeb71e94ef1466dad339f051684a74428c7798bdcdf6157cdd8e8
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
