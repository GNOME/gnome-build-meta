kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.37/orca-3.37.90.tar.xz
  ref: 1ab2eb5be8c3633a2b61c26c5e3c9e1a5b1114baf148fae89cec35dfba4cb64b
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
