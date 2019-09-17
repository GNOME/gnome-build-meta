kind: meson
sources:
- kind: git_tag
  url: git_freedesktop_org:accountsservice/accountsservice.git
  track: master
depends:
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/vala.bst
  type: build
- filename: components/dbus.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
