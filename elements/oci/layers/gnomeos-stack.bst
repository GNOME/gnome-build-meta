kind: stack

depends:
- gnomeos-deps/deps.bst

- gnomeos/fwupd-efi-signed-maybe.bst
- gnomeos/import-deployment-pub-key.bst
- gnomeos/public-keys.bst
- gnomeos/reload-sysext.bst
- gnomeos/replace-signed-systemd-boot.bst
- gnomeos/systemd-pcrlock-workaround.bst

- oci/integration/extrafs.bst
- oci/os-release.bst

public:
  bst:
    integration-commands:
    # - groupadd root -r -g 0
    # - useradd root -rm -u 0 -g 0 -d /root
    - |
      cat <<EOF >>/etc/sudoers
      %wheel ALL=(ALL) NOPASSWD: ALL
      EOF
    - mkdir -p /media
    - mkdir -p /home
    - touch /etc/machine-id
    - groupadd -r wheel
