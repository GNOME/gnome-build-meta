kind: autotools
sources:
- kind: git_tag
  url: gnome:orca.git
  track: master
  ref: ORCA_43_1-12-gb2894df43a917743bcd9714fc46a657974ec230d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
