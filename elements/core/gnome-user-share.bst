kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-user-share.git
  track: master
  ref: 47.alpha-2-gb2800a60593e77418d4e709d72f8f2294ecb411c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
