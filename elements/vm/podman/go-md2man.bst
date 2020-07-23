kind: manual

sources:
- kind: tar
  url: github_com:cpuguy83/go-md2man/archive/v1.0.10.tar.gz
  directory: go/src/github.com/cpuguy83/go-md2man

build-depends:
- vm/podman/go.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

environment:
  GOPATH: "%{build-root}/go"

variables:
  optimize-debug: "false"

config:
  build-commands:
  - |
    go build github.com/cpuguy83/go-md2man

  install-commands:
  - |
    go install github.com/cpuguy83/go-md2man

  - |
    install -Dm755 -t "%{install-root}%{bindir}" "${GOPATH}/bin"/*
