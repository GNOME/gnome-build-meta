kind: manual

sources:
- kind: tar
  url: github_com:containernetworking/plugins/archive/v0.8.6.tar.gz
  directory: src/github.com/containernetworking/plugins

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/git.bst
- vm/podman/go.bst
- vm/podman/go-md2man.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

environment:
  GOPATH: "%{build-root}"

variables:
  ldflags_defaults: ""
  optimize-debug: "false"

config:
  build-commands:
  - |
    cd src/github.com/containernetworking/plugins
    ./build_linux.sh

  install-commands:
  - |
    cd src/github.com/containernetworking/plugins
    install -Dm755 -t "%{install-root}%{libexecdir}/cni" bin/*
