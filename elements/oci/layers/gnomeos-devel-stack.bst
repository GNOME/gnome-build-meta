kind: stack

depends:
- gnomeos-deps/deps.bst
- gnomeos-deps/deps-devel.bst

- core.bst
- sdk-platform.bst
- sdk.bst
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

    - rm -rf /usr/local /srv /home
    - mkdir -p /var /sysroot /boot

    - ln -s /var/home /home
    - ln -s /var/roothome /root
    - ln -s /var/srv /srv
    - ln -s sysroot/ostree ostree
    - ln -s /var/usrlocal /usr/local

    - mkdir -p /media
    - touch /etc/machine-id
    - groupadd -r wheel
