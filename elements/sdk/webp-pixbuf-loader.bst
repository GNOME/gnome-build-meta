kind: meson

sources:
- kind: tar
  url: github_files:aruiz/webp-pixbuf-loader/archive/refs/tags/0.2.4.tar.gz
  ref: 54f448383d1c384409bd1690cdde9b44535c346855902e29bd37a18a7237c547

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:bootstrap-import.bst
