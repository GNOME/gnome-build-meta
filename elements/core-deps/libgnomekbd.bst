kind: autotools

sources:
- kind: git_tag
  url: gnome:libgnomekbd.git
  track: master
  ref: 3.28.1-11-gd510a0bf7290471787dc8bbdaa0a1fe018846abf

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
