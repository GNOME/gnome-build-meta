kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib/2.57/glib-2.57.3.tar.xz
  ref: 2d0430f6b7f317675ad73e16e3e865be45b0e4aa40364969a20dcb15e10eef6e
depends:
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: -Dinstalled-tests=true -Dselinux=false
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
