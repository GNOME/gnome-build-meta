kind: meson

sources:
- kind: tar
  url: github_files:containers/toolbox/releases/download/0.3/toolbox-0.3-vendored.tar.xz
  ref: 0243bd995743ea73464426839ee80e2a13a8c529e3053292783f603b882dd125
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
