kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gupnp-av/0.12/gupnp-av-0.12.11.tar.xz
  ref: 689dcf1492ab8991daea291365a32548a77d1a2294d85b33622b55cca9ce6fdc
depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
