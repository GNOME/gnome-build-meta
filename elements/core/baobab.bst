kind: meson

sources:
- kind: git_repo
  url: gnome:baobab.git
  track: main
  ref: 50.0-15-ge495411ab01fca50a66a1e9cd3c7c2e16141d278

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
