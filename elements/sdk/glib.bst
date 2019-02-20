kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib/2.59/glib-2.59.3.tar.xz
depends:
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local:
    -Dinstalled-tests=true
    -Dselinux=disabled
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
