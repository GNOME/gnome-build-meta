kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.36/orca-3.36.2.tar.xz
  ref: c1ac648b6be31488c26ff959114287869df9ce3ca21999e40ded87741c98831f
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
