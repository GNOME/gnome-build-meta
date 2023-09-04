kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-shell-extensions.git
  track: main
  ref: 45.beta-6-g5e025ba19451e6f5e2ff4af1a1b5ea2a323ba61e
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
