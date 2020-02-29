kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.35/orca-3.35.91.tar.xz
  ref: d234d66d2b0bfe69730e8d0f5605bdd31564b7c22b07890041bf0175d03596fc
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
