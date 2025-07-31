kind: meson

sources:
- kind: tar
  url: github_files:containers/toolbox/releases/download/0.1.1/toolbox-0.1.1-vendored.tar.xz
  ref: ce9b024ef7ca98053359c70ed309eb263bde4df409a8488dc3284dfe3419bdae
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

variables:
  optimize-debug: "false"
  compress-debug: "false"
  local_ldflags: -Wl,-z,lazy

environment:
  GOFLAGS: -mod=vendor
