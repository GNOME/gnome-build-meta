kind: meson

sources:
- kind: git_repo
  url: gnome:baobab.git
  track: main
  ref: 50.0-23-g52f0bd2728a49cd50cf4018bce5ebcfabde23a75

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
