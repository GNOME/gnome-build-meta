kind: meson
sources:
- kind: git_repo
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 47.beta-0-g3dedf8207c9bdee6b2d6d515630a6763e16b117a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
