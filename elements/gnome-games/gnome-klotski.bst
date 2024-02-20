kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-klotski.git
  track: master

  ref: 3.38.2-35-g6b66b77203cf6421473b2f99f1e895a85b638688
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- gnome-games/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
