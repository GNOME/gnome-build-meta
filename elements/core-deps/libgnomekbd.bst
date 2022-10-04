kind: autotools

sources:
- kind: git_tag
  url: gnome:libgnomekbd.git
  track: master
  ref: 3.28.1-7-gcff39545e7fbf2475557b1ed4583d5d43bb4fb55

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
