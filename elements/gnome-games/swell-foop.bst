kind: meson
sources:
- kind: git_repo
  url: gnome:swell-foop.git
  track: master

  ref: 46.alpha-24-g88ce08e449e9676aef73addbf1b7c592a12eb3e9
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- gnome-games/clutter-gtk.bst
- gnome-games/clutter.bst
- gnome-games/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
