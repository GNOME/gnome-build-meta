kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/four-in-a-row.git
  track: master
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gsound.bst
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
