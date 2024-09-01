kind: meson

sources:
- kind: tar
  url: github_files:containers/toolbox/releases/download/0.0.99.5/toolbox-0.0.99.5-vendored.tar.xz
  ref: fb716c1a9d587c931e33a67cb1e7dce890d850dff6f863014c7413804169d917
- kind: patch_queue
  path: patches/toolbox/

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:components/go-md2man.bst
- freedesktop-sdk.bst:components/strace.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- vm-deps/fake-toolbox-env.bst

depends:
- freedesktop-sdk.bst:components/podman.bst

variables:
  optimize-debug: "false"
  compress-debug: "false"

environment:
  GOFLAGS: -mod=vendor
