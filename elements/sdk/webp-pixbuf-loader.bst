kind: meson

sources:
- kind: tar
  url: github_files:aruiz/webp-pixbuf-loader/archive/refs/tags/0.2.7.tar.gz
  ref: 61ce5e8e036043f9d0e78c1596a621788e879c52aedf72ab5e78a8c44849411a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:bootstrap-import.bst
