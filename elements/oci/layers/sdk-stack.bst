kind: stack

depends:
- oci/integration/extrafs.bst
- sdk.bst
- sdk/os-release.bst
- freedesktop-sdk.bst:components/sudo.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:vm/mesa-default.bst

public:
  bst:
    integration-commands:
    - groupadd root -r -g 0
    - useradd root -rm -u 0 -g 0 -d /root
    - groupadd -r wheel
    - |
      cat <<EOF >>/etc/sudoers
      %wheel ALL=(ALL) NOPASSWD: ALL
      EOF
    - mkdir -p /media
    - mkdir -p /home
    - touch /etc/machine-id
