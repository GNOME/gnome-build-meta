kind: meson

sources:
- kind: tar
  url: gstreamer:src/gstreamer-editing-services/gst-editing-services-1.26.11.tar.xz
  ref: a36e87900b44ac1608612f2d616fc032f9d7d920327c4d231affb6fe9349714d

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/flex.bst

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
