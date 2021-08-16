kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp-av/0.13/gupnp-av-0.13.1.tar.xz
  ref: 4bce0fd95483fefc9b64f2b1a09dd0eab5f66fec3848fcfb68f951128047a44f
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
