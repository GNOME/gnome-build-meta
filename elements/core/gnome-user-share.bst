kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-user-share.git
  track: master
  ref: 43.0-7-gc9216cdb3a66568e87429e9fc1100d884af1f40d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
