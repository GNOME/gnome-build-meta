kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-font-viewer.git
  track: main
  ref: 50.0-0-g782152f516864fff2f04534b5a5d6f94ca0cb52a

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
