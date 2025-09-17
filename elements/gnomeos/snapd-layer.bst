kind: script

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/make-layer.bst
- gnomeos/initial-scripts.bst
- gnomeos/initial-scripts-snapd.bst
- filename: gnomeos/filesystem.bst
  config:
    location: '/sysroot'
- filename: gnomeos/filesystem-snapd.bst
  config:
    location: '/sysroot-snapd'

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  repart-seed: 42a68ae3-36dd-4549-a0e6-47404842b63e

environment:
  EROFS_OPTIONS: --all-time -T %{filesystem-time} -E all-fragments,fragdedupe=inode
  EROFS_WORKERS: --workers=%{max-jobs}
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

environment-nocache:
- EROFS_WORKERS

config:
  commands:
  - mkdir /fakecap
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --initscripts /etc/fdsdk/initial_scripts \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    prepare-image.sh \
       --sysroot /sysroot-snapd \
       --initscripts /etc/fdsdk/initial_scripts-snapd \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >'%{install-root}/vars.txt'

  - |
    cat >/sysroot-snapd/usr/lib/tmpfiles.d/extra-etc-snapd.conf<<EOF
    L /etc/apparmor
    L /etc/apparmor.d
    L /etc/profile.d/snapd.sh
    L /etc/xdg/autostart/snap-userd-autostart.desktop
    d /snap
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
    cat <<EOF >/sysroot-snapd/usr/lib/extension-release.d/extension-release.snapd_%{image-version}
    ID=org.gnome.os
    VERSION_ID=${version_id}
    SYSEXT_LEVEL=%{image-version}
    EOF

  - |
    mkdir -p /tmp/output
    make-layer /sysroot/usr /sysroot-snapd/usr /tmp/output/usr

  - |
    mkdir -p /tmp/output/usr/share/factory/etc
    cp -rT /sysroot-snapd/etc/apparmor /tmp/output/usr/share/factory/etc/apparmor
    cp -rT /sysroot-snapd/etc/apparmor.d /tmp/output/usr/share/factory/etc/apparmor.d
    mkdir -p /tmp/output/usr/share/factory/etc/profile.d
    cp -rT /sysroot-snapd/etc/profile.d/snapd.sh /tmp/output/usr/share/factory/etc/profile.d/snapd.sh
    mkdir -p /tmp/output/usr/share/factory/etc/xdg/autostart
    cp -rT /sysroot-snapd/etc/xdg/autostart/snap-userd-autostart.desktop /tmp/output/usr/share/factory/etc/xdg/autostart/snap-userd-autostart.desktop

  - |
    mkdir -p /tmp/output/etc
    cp -T /sysroot-snapd/usr/lib/os-release /tmp/output/etc/os-release

  - mkdir -p definitions
  - |
    cat <<EOF >definitions/10-snapd.conf
    [Partition]
    Type=root
    Label=gnomeos_usr_snapd_%A
    CopyFiles=/usr
    Minimize=best
    Format=erofs
    Compression=zstd
    SplitName=root
    AddValidateFS=no
    EOF

  - |
    mkdir -p /var/tmp

  - |
    TMPDIR=/var/tmp \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
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
        snapd.raw \
        --json=pretty \
        >repart.json

  - |
    mv snapd.root.raw %{install-root}
