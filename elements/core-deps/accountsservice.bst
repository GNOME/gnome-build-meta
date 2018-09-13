kind: meson
sources:
- kind: git
  url: git_freedesktop_org:accountsservice
  track: master
depends:
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
