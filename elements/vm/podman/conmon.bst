kind: manual

sources:
- kind: tar
  url: github_com:containers/conmon/archive/v2.0.19.tar.gz
  directory: src/github.com/containers/conmon

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/git.bst
- vm/podman/go.bst
- vm/podman/go-md2man.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst

environment:
  GOPATH: "%{build-root}"

variables:
  ldflags_defaults: ""
  optimize-debug: "false"

config:
  build-commands:
  - |
    cd src/github.com/containers/conmon
    make

  install-commands:
  - |
    cd src/github.com/containers/conmon
    make DESTDIR="%{install-root}" PREFIX="%{prefix}" install
