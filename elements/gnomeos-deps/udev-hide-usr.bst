kind: manual

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/pkg-config.bst

variables:
  strip-binaries: ''

config:
  build-commands:
  - |
    type() {
      systemd-id128 show -Pu "${1}"
    }

    cat <<EOF >90-hide-usr.rules
    # All / and /usr verity
    SUBSYSTEM=="block", ACTION=="add|change|move|bind", ENV{ID_PART_ENTRY_TYPE}=="$(type root-verity)|$(type usr-verity)", ENV{ID_FS_TYPE}=="DM_verity_hash", ENV{UDISKS_IGNORE}="1"
    # All / and /usr squashfs
    SUBSYSTEM=="block", ACTION=="add|change|move|bind", ENV{ID_PART_ENTRY_TYPE}=="$(type root)|$(type usr)", ENV{ID_FS_TYPE}=="squashfs|erofs", ENV{UDISKS_IGNORE}="1"

    # All dm-verity devices
    SUBSYSTEM=="block", ACTION=="add|change|move|bind", ENV{DM_UUID}=="CRYPT-VERITY-*", ENV{UDISKS_IGNORE}="1"
    EOF

  install-commands:
  - |
    install -Dm 644 -t "%{install-root}$(pkg-config udev --variable udevdir)/rules.d" 90-hide-usr.rules
  - |
    %{install-extra}
