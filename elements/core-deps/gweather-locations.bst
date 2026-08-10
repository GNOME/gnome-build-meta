kind: meson

sources:
- kind: tar
  url: gnome_downloads:gweather-locations/2026/gweather-locations-2026.2.tar.xz
  ref: e7570a3661e0a752a06387b2032585cf588fc56770b1f9f39f1a55d17b2835fe
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/pygobject.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
