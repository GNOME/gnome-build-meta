kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-chess.git
  track: master

build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
