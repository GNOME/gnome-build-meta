kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/hitori.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
