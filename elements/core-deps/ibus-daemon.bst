kind: filter

build-depends:
- sdk-deps/ibus.bst

runtime-depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libibus.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  exclude:
    - libibus

public:
  bst:
    overlap-whitelist:
    - "%{project_licensedir}/ibus"
    - "%{project_licensedir}/ibus/**"
