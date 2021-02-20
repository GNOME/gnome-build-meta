kind: make

sources:
- kind: tar
  url: github_com:git-lfs/git-lfs/releases/download/v2.11.0/git-lfs-v2.11.0.tar.gz

  ref: 8183c4cbef8cf9c2e86b0c0a9822451e2df272f89ceb357c498bfdf0ff1b36c7
build-depends:
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:components/which.bst

depends:
- freedesktop-sdk.bst:components/git.bst

variables:
  optimize-debug: "false"

environment:
  MAKEFLAGS: -j%{max-jobs}
  GO111MODULE: on
  GOFLAGS: -mod=vendor
  LDFLAGS: ''

config:
  build-commands:
  - make VERSION=v2.11.0

  install-commands:
  - install -Dm755 -t "%{install-root}%{bindir}" bin/git-lfs

public:
  bst:
    integration-commands:
    - git lfs install --system
