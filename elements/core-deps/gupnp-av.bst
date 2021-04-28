kind: autotools

sources:
- kind: tar
  url: gnome_downloads:gupnp-av/0.12/gupnp-av-0.12.11.tar.xz
  ref: 689dcf1492ab8991daea291365a32548a77d1a2294d85b33622b55cca9ce6fdc
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
