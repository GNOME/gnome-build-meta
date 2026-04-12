kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-font-viewer.git
  track: main
  ref: 50.0-7-ge1728c2a3a2d0289e3e5f2bd119b96f5c3a4c384

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
