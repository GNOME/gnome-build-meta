kind: stack

depends:
  - oci/layers/gnomeos-devel-stack.bst
  - oci/integration/containeruser.bst
  - freedesktop-sdk.bst:vm/config/sudo-nopasswd.bst
