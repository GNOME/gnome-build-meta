kind: meson

sources:
- kind: git_tag
  url: gnome:gsettings-desktop-schemas.git
  track: master
  ref: 45.alpha-4-g775c55e393e69da4f39a0ccf349a2833a789e53a

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
