kind: meson

sources:
- kind: tar
  url: github_files:containers/toolbox/releases/download/0.1.2/toolbox-0.1.2-vendored.tar.xz
  ref: f376cabd161b2d17a28349b960358318a763cf91797c2c78b217ebf65c5df735
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
- gnomeos-deps/fake-toolbox-env.bst
- gnomeos-deps/fish.bst

depends:
- freedesktop-sdk.bst:components/podman.bst
- freedesktop-sdk.bst:components/p11-kit.bst

variables:
  optimize-debug: "false"
  compress-debug: "false"

environment:
  GOFLAGS: -mod=vendor

public:
  cpe:
    vendor: 'containers_project'
