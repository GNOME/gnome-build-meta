kind: meson
sources:
- kind: git_repo
  url: gnome:iagno.git
  track: master

  ref: 3.38.1-110-g15c0e8b5189b510639c9bd956c383b84c78ba7d0
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
