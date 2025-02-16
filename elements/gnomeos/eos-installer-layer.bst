kind: script

build-depends:
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/make-layer.bst
- gnomeos/initial-scripts.bst
- gnomeos/initial-scripts-eos-installer.bst
- filename: gnomeos/filesystem.bst
  config:
    location: '/sysroot'
- filename: gnomeos/filesystem-eos-installer.bst
  config:
    location: '/sysroot-eos-installer'

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
    prepare-image.sh \
       --sysroot /sysroot-eos-installer \
       --initscripts /etc/fdsdk/initial_scripts-eos-installer \
       --seed "%{sysroot-seed}" \
       --rootsource /dev/gpt-auto-root \
       --rootfstype btrfs \
       --rootfsopts relatime \
       --noboot >'%{install-root}/vars.txt'

  - |
    mkdir -p /sysroot-eos-installer/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac
    cat <<EOF >/sysroot-eos-installer/usr/lib/extension-release.d/extension-release.eos-installer_%{image-version}
    ID=org.gnome.os
    VERSION_ID=${version_id}
    SYSEXT_LEVEL=%{image-version}
    EOF

  - |
    mkdir -p /tmp/output
    make-layer /sysroot/usr /sysroot-eos-installer/usr /tmp/output/usr

  - |
    mkdir -p /tmp/output/etc
    cp -T /sysroot-eos-installer/usr/lib/os-release /tmp/output/etc/os-release

  - mkdir -p definitions
  - |
    cat <<EOF >definitions/10-eos-installer.conf
    [Partition]
    Type=root
    Label=gnomeos_usr_eos-installer_%A
    CopyFiles=/usr
    Minimize=best
    Format=squashfs
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
        --root=/tmp/output \
        eos-installer.raw \
        --json=pretty \
        >repart.json

  - |
    install -Dm644 -t '%{install-root}' eos-installer.root.raw
