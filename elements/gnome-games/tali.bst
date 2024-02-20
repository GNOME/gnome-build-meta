kind: meson
sources:
- kind: git_repo
  url: gnome:tali.git
  track: master

  ref: 40.9-3-gdb7a67ea59d901cd91198de189370bc3fd892385
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- gnome-games/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
