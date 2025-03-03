kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 48.rc-18-g48423021a7ed5a413d18c3b80cd317cd1a34f7d2

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
