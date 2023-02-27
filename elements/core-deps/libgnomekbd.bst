kind: autotools

sources:
- kind: git_tag
  url: gnome:libgnomekbd.git
  track: master
  ref: 3.28.1-10-gd2c98e093e3a561f3faa410aec661061b82d8f65

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
