kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-chess.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
