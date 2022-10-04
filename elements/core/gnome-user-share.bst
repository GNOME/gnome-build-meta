kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-user-share.git
  track: master
  ref: 43.0-2-g6d644849bc68512ec4dda46094ad0ddf1bc2a042

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
