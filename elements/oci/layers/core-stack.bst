kind: stack

depends:
- gnomeos/deps-devel.bst

- core.bst
- sdk-platform.bst
- sdk.bst
- oci/integration/extrafs.bst
- oci/os-release.bst

public:
  bst:
    integration-commands:
    - groupadd root -r -g 0
    - useradd root -rm -u 0 -g 0 -d /root
    - |
      cat <<EOF >>/etc/sudoers
      %wheel ALL=(ALL) NOPASSWD: ALL
      EOF
    - mkdir -p /media
    - mkdir -p /home
    - touch /etc/machine-id
    - groupadd -r wheel
