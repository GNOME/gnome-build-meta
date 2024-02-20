kind: meson
sources:
- kind: git_repo
  url: gnome:five-or-more.git
  track: master

  ref: 3.32.0-249-gc071fa2c27168ffc1b2bdbe02fd140d263edab61
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- gnome-games/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
