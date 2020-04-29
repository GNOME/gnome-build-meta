kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/accerciser.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/pyatspi.bst
- sdk/at-spi2-atk.bst
- sdk/gtk+-3.bst
- sdk/pycairo.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
