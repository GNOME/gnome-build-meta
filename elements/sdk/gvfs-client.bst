kind: filter

build-depends:
- sdk-deps/gvfs.bst

runtime-depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  include:
  - gvfs-client
  - gvfs-license
  include-orphans: false

public:
  bst:
    overlap-whitelist:
    - "%{project_licensedir}/gvfs"
    - "%{project_licensedir}/gvfs/**"
