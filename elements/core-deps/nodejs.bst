kind: make

sources:
- kind: git_repo
  url: github:nodejs/node.git
  track: 'v*'
  ref: v25.7.0-0-ge7f5e71f3b71fba07bd94f758909fde4e58dc9e3

build-depends:
- freedesktop-sdk.bst:components/gyp.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

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
