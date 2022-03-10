kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/42/orca-42.rc.tar.xz
  ref: 2ca68a0bdd06e0dd531acc5e1941efc324146f3c5ad25f5eb2326de1bf12328f
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
