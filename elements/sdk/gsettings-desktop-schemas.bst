kind: meson

sources:
- kind: git_tag
  url: gnome:gsettings-desktop-schemas.git
  track: master
  ref: 43.0-11-gefd1f23eb796043d002d33f0d9c048bfbaf9349f

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
