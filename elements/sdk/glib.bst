kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib/2.58/glib-2.58.3.tar.xz
  ref: 97d6a9d926b6aa3dfaadad3077cfb43eec74432ab455dff14250c769d526d7d6
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
