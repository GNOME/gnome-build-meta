kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib/2.58/glib-2.58.0.tar.xz
  ref: c0f4ce0730b4f95c47b711613b5406a887c2ee13ea6d25930d72a4fa7fdb77f6
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
