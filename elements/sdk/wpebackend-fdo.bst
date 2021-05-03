kind: meson

sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.9.91.tar.xz
  ref: 13dcbdaee3af8e46c6a2400c28f75a8f4ca24a41324a324184eb2b848964c3ff
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
