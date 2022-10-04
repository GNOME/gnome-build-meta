kind: meson
sources:
- kind: tar
  url: wpewebkit:wpebackend-fdo-1.13.1.tar.xz
  ref: d61ca47ec52d7cd1d6f869f66d6ea247a53092acfad1a8cbab71836a82d3a0ae
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
