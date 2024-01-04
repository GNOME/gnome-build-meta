kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-user-share.git
  track: master
  ref: 43.0-12-gc4f8953f687728cbe58d783c561559bd10c8159c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
