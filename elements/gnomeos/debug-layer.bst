kind: script

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- gnomeos/os-release-user.bst
- filename: gnomeos/filesystem-debug.bst
  config:
    location: '/sysroot-debug'

variables:
  repart-seed: 0dc2e590-c162-4ed3-992f-75ddb3fdbb65

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
    mkdir -p /sysroot-debug/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac
    cat <<EOF >/sysroot-debug/usr/lib/extension-release.d/extension-release.debug
    ID=org.gnome.os
    VERSION_ID=${version_id}
    SYSEXT_LEVEL=%{image-version}
    EOF

  - |
    cp /etc/os-release /sysroot-debug/etc/os-release

  - mkdir -p definitions
  - |
    cat <<EOF >definitions/10-debug.conf
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
        --root=/sysroot-debug \
        debug.raw \
        --json=pretty \
        >repart.json

  - |
    mv debug.usr.raw %{install-root}
