kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-taquin.git
  track: master

  ref: 3.38.1-41-g6fa56c1b1ff053e2cf5ae58260d66baa2409530a
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
