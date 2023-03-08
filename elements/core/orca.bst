kind: autotools
sources:
- kind: git_tag
  url: gnome:orca.git
  track: master
  ref: ORCA_44_RC-1-g37b694a16da64f32221be496bb2df60c09e59cb6
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
