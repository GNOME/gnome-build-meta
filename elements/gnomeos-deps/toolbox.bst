kind: meson

sources:
- kind: tar
  url: 
    github_files:containers/toolbox/releases/download/0.2/toolbox-0.2-vendored.tar.xz
  ref: ffb6c6b8d634d327d0b2fdf9e8fb9c97829997f8a5aec8e5d0f6767b5d6e043b
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
  local_ldflags: -Wl,-z,lazy

environment:
  GOFLAGS: -mod=vendor

public:
  cpe:
    vendor: 'containers_project'
