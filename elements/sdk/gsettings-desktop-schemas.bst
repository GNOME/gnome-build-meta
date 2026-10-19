kind: meson

sources:
- kind: git_repo
  url: gnome:gsettings-desktop-schemas.git
  track: main
  ref: 51.0-10-g368be61205df9a6a120500cee39f0b4561109f12

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
