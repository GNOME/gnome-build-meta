kind: filter

build-depends:
- sdk-deps/ibus.bst

runtime-depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  include:
    - libibus
    - ibus-license
  include-orphans: false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libibus-1.0.so'
    overlap-whitelist:
    - "%{project_licensedir}/ibus"
    - "%{project_licensedir}/ibus/**"
