kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-font-viewer.git
  track: main
  ref: 50.0-49-gabd14c95e303d7cd8f4500e37b06a538864ea4f8

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
