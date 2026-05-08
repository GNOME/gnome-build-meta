kind: make

sources:
- kind: git_repo
  url: github:nodejs/node.git
  track: 'v*'
  ref: v26.3.0-0-gb7e6a5d37e7a14ef0f2cc95214b95d66c4081415

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
