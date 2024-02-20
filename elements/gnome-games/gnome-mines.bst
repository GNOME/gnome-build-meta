kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-mines.git
  track: master

  ref: 40.0-115-g53cdbac618817fc34d01d8184c81f80a4ec6c900
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- gnome-games/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
