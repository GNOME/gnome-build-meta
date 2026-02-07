kind: meson

sources:
- kind: tar
  url: gnome_downloads:gweather-locations/2025/gweather-locations-2025.1.tar.xz
  ref: 5609ee04cf6ac4cc7721f3241bd8d69ffebf0f1b60210fadd88c869a4b884d87
build-depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
