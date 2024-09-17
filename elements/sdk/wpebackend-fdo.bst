kind: meson
sources:
- kind: tar
  url: wpewebkit:wpebackend-fdo-1.14.3.tar.xz
  ref: 10121842595a850291db3e82f3db0b9984df079022d386ce42c2b8508159dc6c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
