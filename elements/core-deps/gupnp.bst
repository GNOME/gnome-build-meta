kind: meson
sources:
- kind: tar
  url: gnome_downloads:gupnp/1.2/gupnp-1.2.2.tar.xz
  ref: 9a80bd953e5c8772ad26b72f8da01cbe7241a113edd6084903f413ce751c9989
depends:
- core-deps/NetworkManager.bst
- core-deps/gssdp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dcontext_manager=network-manager
