kind: meson

sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.9.1.tar.xz
  ref: a1dc4e506413719a0d84757797b645fa76590e6c8db23d2403d990dc2e196a64
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
