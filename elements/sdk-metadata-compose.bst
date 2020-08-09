kind: compose

build-depends:
- sdk.bst

public:
  bst:
    split-rules:
      export-docs:
        - '%{datadir}/doc/**'
      export-vapi:
        - '%{datadir}/vala/vapi/**'
        - '%{datadir}/vala-*/vapi/**'
      export-gir:
        - '%{datadir}/gir-1.0/**'
      export-gir-arch:
        # FIXME: will have to export per-arch tarballs of gir
        # meaning we should split this into its own tarball and
        # upload it independently
        - '%{libdir}/gir-1.0'
        - '%{libdir}/gir-1.0/**'
