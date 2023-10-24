kind: script

build-depends:
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- vm-secure/make-layer.bst
- vm-secure/initial-scripts.bst
- vm-secure/initial-scripts-snapd.bst
- filename: vm-secure/filesystem.bst
  config:
    location: '/sysroot'
- filename: vm-secure/filesystem-snapd.bst
  config:
    location: '/sysroot-snapd'

environment:
  SYSTEMD_REPART_MKFS_OPTIONS_EROFS: -z lz4 -E dedupe,fragments

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  repart-seed: 42a68ae3-36dd-4549-a0e6-47404842b63e

config:
  commands:
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --initscripts /etc/fdsdk/initial_scripts \
       --seed "%{sysroot-seed}" \
       --rootsource /dev/gpt-auto-root \
       --rootfstype btrfs \
       --rootfsopts relatime \
       --noboot >/dev/null

  - |
    mkdir -p /sysroot/usr/share/factory
    mv -T /sysroot/etc /sysroot/usr/share/factory/etc

  - |
    prepare-image.sh \
       --sysroot /sysroot-snapd \
       --initscripts /etc/fdsdk/initial_scripts-snapd \
       --seed "%{sysroot-seed}" \
       --rootsource /dev/gpt-auto-root \
       --rootfstype btrfs \
       --rootfsopts relatime \
       --noboot >'%{install-root}/vars.txt'

  - |
    mkdir -p /sysroot-snapd/usr/share/factory
    mv -T /sysroot-snapd/etc /sysroot-snapd/usr/share/factory/etc

  - |
    cat >/sysroot-snapd/usr/lib/tmpfiles.d/extra-etc-snapd.conf<<EOF
    C /etc/apparmor
    C /etc/apparmor.d
    f /etc/profile.d/snapd.sh
    f /etc/xdg/autostart/snap-userd-autostart.desktop
    d /var/lib/snapd/snap
    L+ /snap - - - - /var/lib/snapd/snap
    EOF

  - |
    mkdir -p /sysroot-snapd/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac
    cat <<EOF >/sysroot-snapd/usr/lib/extension-release.d/extension-release.snapd
    ID=org.gnome.os
    VERSION_ID=${version_id}
    EOF

  - |
    mkdir -p /output
    make-layer /sysroot/usr /sysroot-snapd/usr /output/usr

  - |
    mkdir -p /output/etc
    cp -T /sysroot-snapd/usr/lib/os-release /output/etc/os-release

  - mkdir -p definitions
  - |
    cat <<EOF >definitions/10-snapd.conf
    [Partition]
    Type=root
    Label=gnomeos_usr_snapd_%A
    CopyFiles=/usr
    Minimize=best
    Format=erofs
    SplitName=root
    EOF

  - |
    mkdir -p /var/tmp

  - |
    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --definitions=definitions \
        --empty=create \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --split=true \
        --seed %{repart-seed} \
        --root=/output \
        snapd.raw \
        --json=pretty \
        >repart.json

  - |
    install -Dm644 -t '%{install-root}' snapd.root.raw
