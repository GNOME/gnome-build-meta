kind: autotools

sources:
- kind: tar
  url: gnome_downloads:gupnp-dlna/0.10/gupnp-dlna-0.10.5.tar.xz
  ref: 123e368227c11d5c17fc1aa76cbdaffa345355eb51d172cd39fc74a5b468ff6a
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
