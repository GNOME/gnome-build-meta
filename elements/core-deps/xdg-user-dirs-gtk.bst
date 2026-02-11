kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-user-dirs-gtk.git
  track: master
  ref: 0.16-5-ge7da6c31f263f856318e15b22cccff6d2fdc29d8

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/xdg-user-dirs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
