kind: meson

sources:
- kind: anitya
  project-id: 230920
  url: gstreamer:src/gstreamer-editing-services/gst-editing-services-{version}.tar.xz
  ref:
    version: 1.28.9
    sha256sum: 23caf8439ba063091da226e7a1774915848105ff47ebdbe7773fffa21a094692
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
