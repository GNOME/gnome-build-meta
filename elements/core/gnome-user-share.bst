kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-user-share.git
  track: master
  ref: 43.0-5-ge426a7acba61f8a1688b3d680f30467924fc10ae

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
