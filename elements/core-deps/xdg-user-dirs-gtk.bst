kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-user-dirs-gtk.git
  track: master
  ref: 0.13-1-g75e511564cd5c0b6d21ef7005e3afeeb71ea10e2

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/xdg-user-dirs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
