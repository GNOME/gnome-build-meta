kind: make

sources:
- kind: git_repo
  url: github:libbpf/libbpf.git
  track: v*
  ref: v1.4.1-0-g63738ed87620255b217ec155cfa1448086798748

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
