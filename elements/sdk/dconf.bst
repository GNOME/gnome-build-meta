kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/dconf/0.30/dconf-0.30.1.tar.xz
  ref: 549a3a7cc3881318107dc48a7b02ee8f88c9127acaf2d47f7724f78a8f6d02b7
- kind: patch
  path: files/dconf/dconf-override.patch
depends:
- sdk/glib.bst
- filename: sdk/vala.bst
  type: build
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: -Dbash_completion=false
