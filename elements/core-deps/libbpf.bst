kind: make

sources:
- kind: git_repo
  url: github:libbpf/libbpf.git
  track: v*
  ref: v1.3.0-0-g20c0a9e3d7e7d4aeb283eae982543c9cacc29477

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  command-subdir: src/
  make-args: >-
    PREFIX=%{prefix}
    LIBDIR=%{libdir}
    INCLUDEDIR=%{includedir}

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libbpf.so'
