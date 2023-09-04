kind: meson

sources:
- kind: git_tag
  url: gnome:gsettings-desktop-schemas.git
  track: master
  ref: 45.beta-8-g497008213dd6dbcd7f2db7a8627118fe4527db69

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
