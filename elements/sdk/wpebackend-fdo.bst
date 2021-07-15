kind: meson
sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.10.0.tar.xz
  ref: b89dfd3500a4dec711132cd7bff72599e67d56a419d000730e14bb99547509cc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
