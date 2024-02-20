kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-nibbles.git
  track: master

  ref: 4.0.1-24-gfc5f6bdc7217ce42bf699b95bb6348492f198990
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/librsvg.bst
- gnome-games/clutter-gtk.bst
- gnome-games/clutter.bst
- gnome-games/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
