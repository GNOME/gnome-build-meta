kind: make

sources:
- kind: tar
  url: github_com:opencontainers/umoci/releases/download/v0.4.7/umoci.tar.xz

build-depends:
- freedesktop-sdk.bst:components/which.bst
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:components/go-md2man.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  optimize-debug: "false"
  compress-debug: "false"
