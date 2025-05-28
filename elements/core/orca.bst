kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/47/orca-47.4.tar.xz
  ref: 44cdb7bb7e321ab76197154c20b395eb86332f283c9e0bcc64e466e9256929eb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
