kind: meson
sources:
- kind: git_repo
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 49.0-1-g05c37607a53d4f57e93daca7c921e202779f8efb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
