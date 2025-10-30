kind: meson

sources:
- kind: git_repo
  url: gnome:gsettings-desktop-schemas.git
  track: main
  ref: 49.1-12-g5e8334530f47e4dc1814c548395c8571912a651f

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
