kind: meson

sources:
- kind: git_tag
  url: gnome:gsettings-desktop-schemas.git
  track: master
  ref: 45.beta-4-g42bedd962ed3014712644376351fb61da72d3aa4

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
