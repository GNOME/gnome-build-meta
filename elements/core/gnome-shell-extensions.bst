kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-shell-extensions.git
  track: main
  ref: 45.alpha-13-ge75a1a15ac35074cd787e921254959779e91b69d
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
