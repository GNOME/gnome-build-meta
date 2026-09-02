kind: make

sources:
- kind: git_repo
  url: github:nodejs/node.git
  track: 'v*'
  ref: v26.8.1-0-g7be6d3af31a65adea57c94c41e50c2b071ed0b3a
- kind: patch
  path: patches/nodejs/fix-v8-build-failures.patch

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/make.bst
- freedesktop-sdk.bst:components/gyp.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/libnghttp2.bst
- freedesktop-sdk.bst:components/brotli.bst

variables:
  optimize-debug: "false"
  debug_flags: "-g1"

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
