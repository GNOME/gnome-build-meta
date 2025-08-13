kind: meson

sources:
- kind: tar
  url: 
    gstreamer:src/gstreamer-editing-services/gst-editing-services-1.26.5.tar.xz
  ref: 734900944f90ece5e2f3983c335178fda50023fe342aa75ecd9d8a9c38b64d9e

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddoc=disabled
    -Dbash-completion=disabled
    -Dxptv=disabled
    -Dpython=disabled
    -Dvalidate=disabled
