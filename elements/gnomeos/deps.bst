kind: stack

depends:
- gnomeos-deps/deps.bst

- gnomeos/repart-config.bst
- gnomeos/initramfs/signed-modules.bst
- gnomeos/sysupdate-config.bst
- gnomeos/import-deployment-pub-key.bst
- gnomeos/os-release-user.bst
- gnomeos/fwupd-efi-signed-maybe.bst
- gnomeos/replace-signed-systemd-boot.bst
- gnomeos/reload-sysext.bst
- gnomeos/live.bst
- gnomeos/systemd-pcrlock-workaround.bst
- gnomeos/public-keys.bst
- gnomeos/signed-boot-common.bst

(?):
- arch in ["x86_64"]:
    depends:
      (>):
      - gnomeos/sysupdate-nvidia-config.bst
