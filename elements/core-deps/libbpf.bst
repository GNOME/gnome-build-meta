kind: make

sources:
- kind: git_repo
  url: github:libbpf/libbpf.git
  track: v*
  ref: v1.4.3-0-gf8c6e0393d4be665fc0b584266b2a1354a71835e

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
