kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-shell-extensions.git
  track: master
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >-
    -Dextension_set=classic
