kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-shell-extensions.git
  track: main
  ref: 46.beta-8-g6d49de36a8d16c33d6888f1c21640b2b39042064
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
