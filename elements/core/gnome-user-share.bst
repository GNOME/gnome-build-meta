kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-user-share.git
  track: master
  ref: 43.0-33-g05c71e7175d61d9847311bbb50064f70b87bd807

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
