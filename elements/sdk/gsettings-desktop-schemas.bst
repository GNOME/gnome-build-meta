kind: meson

sources:
- kind: git_tag
  url: gnome:gsettings-desktop-schemas.git
  track: master
  ref: 44.beta-0-g186faa09c329cb72b1712dd34eec38d5adf2ed78

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
