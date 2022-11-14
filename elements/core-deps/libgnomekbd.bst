kind: autotools

sources:
- kind: git_tag
  url: gnome:libgnomekbd.git
  track: master
  ref: 3.28.1-8-g739069f786cf299ffd72400e4d3fcccae7bcb97c

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
