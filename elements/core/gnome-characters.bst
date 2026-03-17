kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-characters.git
  track: main
  ref: 50.0-0-g1c86ba27ad401cda20f8eb592757b0800a342930

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
