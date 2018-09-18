kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/dconf/0.30/dconf-0.30.0.tar.xz
  ref: 0af256c98395ec5241e830cb0cc760047dfa6d94f2fe93311e021ff94e14a715
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
