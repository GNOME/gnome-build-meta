kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-chess.git
  track: master

  ref: 46.beta-really-1-ge5649a1e9ffa827123ee536ebbf16e262e7c5e94
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
