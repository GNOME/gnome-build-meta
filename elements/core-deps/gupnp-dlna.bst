kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp-dlna/0.11/gupnp-dlna-0.11.0.tar.xz
  ref: ffe130d2d9f965a117bac71c710bddc69bc94ca0cebc845f34cfb1e47276e85b
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
