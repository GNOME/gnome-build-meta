kind: stack

depends:
- gnomeos-deps/deps.bst
- oci/integration/extrafs.bst
- oci/os-release.bst

public:
  bst:
    integration-commands:
    - |
      cat <<EOF >>/etc/sudoers
      %wheel ALL=(ALL) NOPASSWD: ALL
      EOF
    - mkdir -p /media
    - mkdir -p /home
    - touch /etc/machine-id
    - groupadd -r wheel
