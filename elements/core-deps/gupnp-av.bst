kind: meson
sources:
- kind: tar
  url: gnome_downloads:gupnp-av/0.13/gupnp-av-0.13.0.tar.xz
  ref: 578b8f562b0f7e908416a41efbe2b7e6b892cd2ed7eac61ac63c48fdc8d7e6c8
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
