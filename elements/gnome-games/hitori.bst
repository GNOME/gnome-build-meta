kind: meson
sources:
- kind: git_repo
  url: gnome:hitori.git
  track: main

  ref: 44.0-18-gf25b4c66c8dbd2dee9d36256d605a70802cac6b2
build-depends:
- sdk/appstream-glib.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
