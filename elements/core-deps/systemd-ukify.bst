kind: filter

build-depends:
- freedesktop-sdk.bst:components/systemd-base.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-pefile.bst
- freedesktop-sdk.bst:components/systemd-manifest.bst

config:
  include:
  - ukify
  - systemd-license
  include-orphans: false

public:
  bst:
    overlap-whitelist:
    - "%{project_licensedir}/systemd"
    - "%{project_licensedir}/systemd/**"
