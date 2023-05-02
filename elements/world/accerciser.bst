kind: autotools
sources:
- kind: git_tag
  url: gnome:accerciser.git
  track: master

build-depends:
- sdk/appstream-glib.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/pyatspi.bst
- sdk/at-spi2-core.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
