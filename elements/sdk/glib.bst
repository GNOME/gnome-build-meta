kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib/2.60/glib-2.60.6.tar.xz
depends:
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dinstalled-tests=true -Dselinux=disabled
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
