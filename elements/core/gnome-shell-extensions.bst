kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-shell-extensions.git
  track: main
  ref: 47.rc-5-gfa9e2dc71cff33fcb5bece7117951a44b4f7f7b6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dextension_set=classic
