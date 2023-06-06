kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-2048.git
  track: master

build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/librsvg.bst
- world/clutter.bst
- world/clutter-gtk.bst
- world/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
