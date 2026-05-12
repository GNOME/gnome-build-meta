kind: manual

sources:
- kind: git_repo
  url: github:NVIDIA/nvidia-container-toolkit.git
  track: v*.*.*
  exclude:
  - "*rc*"
  ref: v1.19.0-0-gec7b4e2fa2caecad6d89be4a26029b831fe7503a

build-depends:
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  build-commands:
  - go build ./cmd/nvidia-ctk
  - go build ./cmd/nvidia-cdi-hook
  install-commands:
  - install -Dt %{install-root}%{bindir} -m755 nvidia-ctk nvidia-cdi-hook
  - |
    install -Dt %{install-root}%{indep-libdir}/systemd/system -m644 \
            deployments/systemd/nvidia-cdi-refresh.{service,path}

variables:
  local_ldflags: -Wl,-z,lazy
