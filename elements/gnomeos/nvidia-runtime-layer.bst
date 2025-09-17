kind: script

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/make-layer.bst
- gnomeos/initial-scripts.bst
- gnomeos/initial-scripts-nvidia-runtime.bst
- filename: gnomeos/filesystem.bst
  config:
    location: '/sysroot'
- filename: gnomeos/filesystem-nvidia-runtime.bst
  config:
    location: '/sysroot-nvidia-runtime'

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  repart-seed: 53752261-a988-42fb-a585-b35ae0ab2af4

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
       --sysroot /sysroot-nvidia-runtime \
       --initscripts /etc/fdsdk/initial_scripts-nvidia-runtime \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >'%{install-root}/vars.txt'

  - |
    chmod 0711 '/sysroot-nvidia-runtime/bin/nvidia-sleep.sh' '/sysroot-nvidia-runtime/lib/systemd/system-sleep/nvidia'

  - |
    mkdir -p /sysroot-nvidia-runtime/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac
    cat <<EOF >/sysroot-nvidia-runtime/usr/lib/extension-release.d/extension-release.nvidia-runtime_%{image-version}
    ID=org.gnome.os
    VERSION_ID=${version_id}
    SYSEXT_LEVEL=%{image-version}
    EOF

  - |
    mkdir -p /output
    make-layer /sysroot/usr /sysroot-nvidia-runtime/usr /output/usr

  - |
    mkdir -p /output/etc
    cp -T /sysroot-nvidia-runtime/usr/lib/os-release /output/etc/os-release

  - mkdir -p definitions
  - |
    cat <<EOF >definitions/10-nvidia-runtime.conf
    [Partition]
    Type=root
    Label=gnomeos_usr_nvr_%A
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
        --root=/output \
        nvidia-runtime.raw \
        --json=pretty \
        >repart.json

  - |
    mv nvidia-runtime.root.raw %{install-root}
