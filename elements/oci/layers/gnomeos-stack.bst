kind: stack

depends:
- gnomeos-deps/deps.bst
- oci/integration/extrafs.bst
- oci/os-release.bst
- freedesktop-sdk.bst:vm/config/sudo-nopasswd.bst

public:
  bst:
    integration-commands:
    - mkdir -p /media
    - mkdir -p /home
    - touch /etc/machine-id
    - groupadd -r wheel
