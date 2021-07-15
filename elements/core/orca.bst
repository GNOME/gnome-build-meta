kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/41/orca-41.alpha.tar.xz
  ref: 4c5c54ce08529927c528f7aa494f711e7aae7d6804a2e0e9a650ea674c0976f8
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
