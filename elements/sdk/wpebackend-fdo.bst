kind: meson

sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.9.90.tar.xz

  ref: 9d8330f54debb6273b432040dfde2b03e6eed8411dceda0093193a06276aba44
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
