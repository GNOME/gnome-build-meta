kind: meson

sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gstreamer-editing-services/gstreamer-editing-services-1.16.2.tar.xz

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
