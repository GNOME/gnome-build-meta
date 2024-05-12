kind: make

sources:
- kind: git_repo
  url: github:libbpf/libbpf.git
  track: v*
  ref: v1.4.2-0-g1b357586a7a62db7fe27af4ebe4bdefe6986cfd6

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
