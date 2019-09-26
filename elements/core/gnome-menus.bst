kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-menus.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
