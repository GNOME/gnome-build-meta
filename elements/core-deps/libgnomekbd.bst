kind: autotools

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgnomekbd.git
  track: master

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
