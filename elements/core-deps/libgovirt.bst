kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgovirt.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/librest.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
