kind: script

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- gnomeos/os-release-user.bst
- filename: gnomeos/initramfs/signed-nvidia-modules.bst
  config:
    location: '/sysroot-nvidia-modules'

variables:
  repart-seed: a19b0f25-42ac-4c92-8921-d8d4079ec140

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
    mkdir -p /sysroot-nvidia-modules/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac
    cat <<EOF >/sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules_%{image-version}
    ID=org.gnome.os
    VERSION_ID=${version_id}
    SYSEXT_LEVEL=%{image-version}
    SYSEXT_SCOPE=initrd system
    EOF
    cp /sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules_%{image-version} \
       /sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules

  - |
    mkdir /sysroot-nvidia-modules/etc
    cp /etc/os-release /sysroot-nvidia-modules/etc/os-release

  - mkdir -p definitions
  - |
    cat <<EOF >definitions/10-nvidia-modules.conf
    [Partition]
    Type=root
    Label=gnomeos_usr_dev_%A
    CopyFiles=/usr
    Minimize=best
    Format=erofs
    Compression=zstd
    SplitName=usr
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
        --root=/sysroot-nvidia-modules \
        nvidia-modules.raw \
        --json=pretty \
        >repart.json

  - |
    mv nvidia-modules.usr.raw %{install-root}
