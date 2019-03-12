kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gupnp/1.2/gupnp-1.2.0.tar.xz
depends:
- core-deps/NetworkManager.bst
- core-deps/gssdp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dcontext_manager=network-manager
