kind: autotools

sources:
- kind: git_tag
  url: gnome:libgnomekbd.git
  track: master
  ref: 3.28.1-9-g7887700ae6c4997a1a45722f1e45a1af8e757ad4

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
