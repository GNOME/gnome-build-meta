kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/41/orca-41.rc.tar.xz
  ref: d5413294384a143291dba1d3f94ec2fdbb2dec25a1b9ad0d5621b4731b5da80e
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
