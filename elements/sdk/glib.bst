kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib/2.58/glib-2.58.3.tar.xz
  ref: 8f43c31767e88a25da72b52a40f3301fefc49a665b56dc10ee7cc9565cbe7481
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
