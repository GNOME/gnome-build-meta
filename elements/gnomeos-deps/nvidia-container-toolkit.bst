kind: manual

sources:
- kind: git_repo
  url: github:NVIDIA/nvidia-container-toolkit.git
  track: v*.*.*
  exclude:
  - "*rc*"
  ref: v1.20.0-0-g5505e2f94d9aaa08561490db974ba3cd676af209

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/make.bst
- freedesktop-sdk.bst:components/go.bst

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
