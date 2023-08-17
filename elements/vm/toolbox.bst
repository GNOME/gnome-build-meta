kind: meson

sources:
- kind: tar
  url: github_files:containers/toolbox/releases/download/0.0.99.4/toolbox-0.0.99.4-vendored.tar.xz
  ref: 9aaa3151357f66a7fb9545772c146ce8065238d2385c3bbc775493a0c015710d
- kind: patch
  path: files/toolbox/disable-zsh-completions.patch
- kind: patch
  path: files/toolbox/riscv64-dynamic-linker.patch
- kind: patch
  path: files/toolbox/1340.patch

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:components/go-md2man.bst
- freedesktop-sdk.bst:components/strace.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/podman.bst

variables:
  optimize-debug: "false"
  compress-debug: "false"

environment:
  GOFLAGS: -mod=vendor
