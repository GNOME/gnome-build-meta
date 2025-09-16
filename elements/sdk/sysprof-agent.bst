kind: filter

build-depends:
- sdk-deps/sysprof.bst

runtime-depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/libunwind.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  include:
  - sysprof-agent
  - sysprof-license
  include-orphans: false

public:
  bst:
    overlap-whitelist:
    - "%{project_licensedir}/sysprof"
    - "%{project_licensedir}/sysprof/**"
