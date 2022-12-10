kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-user-share.git
  track: master
  ref: 43.0-6-ged0061f55dc55ebed54eb42b84027924cf6a413f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
