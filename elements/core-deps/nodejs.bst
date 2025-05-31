kind: make

sources:
- kind: tar
  url: github_files:nodejs/node/archive/refs/tags/v22.14.0.tar.gz
  ref: ca1a2b5c0c7bc8343ccf1b4b6347a3cab093ed7ac642397189a15098105809c3

build-depends:
- freedesktop-sdk.bst:components/gyp.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/libnghttp2.bst
- freedesktop-sdk.bst:components/brotli.bst

variables:
  optimize-debug: "false"
  make-install: make -j1 install %{make-args} DESTDIR='%{install-root}'

config:
  configure-commands:
  - >-
    ./configure
    --openssl-use-def-ca-store
    --shared-nghttp2
    --shared-openssl
    --shared-zlib
    --with-intl=system-icu
    --shared
