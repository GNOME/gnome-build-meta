kind: meson
sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.12.1.tar.xz
  ref: 45aa833c44ec292f31fa943b01b8cc75e54eb623ad7ba6a66fc2f118fe69e629
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
