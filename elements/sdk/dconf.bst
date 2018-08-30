kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/dconf/0.29/dconf-0.29.2.tar.xz
  ref: 17a2f86d1b063600295085ffb77008d88d94e646a187513245922ef1a6601345
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
