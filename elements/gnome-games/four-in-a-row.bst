kind: meson
sources:
- kind: git_repo
  url: gnome:four-in-a-row.git
  track: master
  ref: 3.38.1-54-g4736ad0d6687f71302115f4391ac4fd6aa288416
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gsound.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
