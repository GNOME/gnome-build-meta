kind: meson

sources:
- kind: tar
  url: github_files:aruiz/webp-pixbuf-loader/archive/refs/tags/0.0.6.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:bootstrap-import.bst
