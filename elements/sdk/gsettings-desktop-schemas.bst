kind: meson

sources:
- kind: git_repo
  url: gnome:gsettings-desktop-schemas.git
  track: master
  ref: 47.alpha-17-g69580076edcda085b17ae6063485f8c0745ab456

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
