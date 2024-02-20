kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-robots.git
  track: master

  ref: 40.0-101-g8668defc00fa8188fdce54254e128e1e29f61c58
build-depends:
- sdk/appstream-glib.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- gnome-games/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
