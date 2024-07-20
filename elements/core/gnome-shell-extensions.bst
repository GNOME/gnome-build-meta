kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-shell-extensions.git
  track: main
  ref: 47.alpha-2-gcbbb2d2869d64537b6e64cee18ce282872e34eb5
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
