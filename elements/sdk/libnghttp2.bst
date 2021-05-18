kind: autotools

sources:
- kind: tar
  url: github_com:nghttp2/nghttp2/releases/download/v1.43.0/nghttp2-1.43.0.tar.xz

build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --enable-lib-only
    --disable-openssl
