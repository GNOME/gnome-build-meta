kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-shell-extensions.git
  track: main
  ref: 46.alpha-3-gfa8866d627b574aa4f2b5e87225606555ff6d4ac
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
