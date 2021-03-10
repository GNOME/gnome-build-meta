kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/hitori.git
  track: master

build-depends:
- sdk/appstream-glib.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
