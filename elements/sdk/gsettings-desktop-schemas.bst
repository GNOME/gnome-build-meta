kind: meson

sources:
- kind: git_repo
  url: gnome:gsettings-desktop-schemas.git
  track: main
  ref: 50.alpha-18-gbb60c643cbbdcd143b97de3b74289817034e6c3e

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
