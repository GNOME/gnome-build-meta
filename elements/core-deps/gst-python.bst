kind: meson

sources:
- kind: anitya
  project-id: 230920
  url: gstreamer:src/gst-python/gst-python-{version}.tar.xz
  ref:
    version: 1.28.9
    sha256sum: e6ad2658fad5b96d99af72ceec7e48995ff792fbda438d34486d189ce047718a

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/pygobject.bst

depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dplugin=enabled
    -Dtests=disabled
