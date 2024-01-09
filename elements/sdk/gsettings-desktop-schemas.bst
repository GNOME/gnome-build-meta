kind: meson

sources:
- kind: git_repo
  url: gnome:gsettings-desktop-schemas.git
  track: master
  ref: 46.alpha-0-g47b16308e45dd6230ca02c99146d4d58bdc95132

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
