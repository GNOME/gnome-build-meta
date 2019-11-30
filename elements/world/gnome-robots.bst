kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-robots.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/yelp-tools.bst
- world/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
