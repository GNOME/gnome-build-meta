kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-2048.git
  track: master

  ref: 3.38.2-30-g3f9a0e8c477f713b724c51e435f24e50ae89f212
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/librsvg.bst
- gnome-games/clutter.bst
- gnome-games/clutter-gtk.bst
- gnome-games/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
