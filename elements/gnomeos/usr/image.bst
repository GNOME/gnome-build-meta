kind: script

build-depends:
- gnomeos/save-perms.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:vm/deploy-tools.bst
- gnomeos/repart-config.bst
- gnomeos/repart-config-mini.bst
- filename: gnomeos/usr/layer.bst
  config:
    location: '/sysroot'

variables:
  repart-seed: 35e34b2b-1fcf-4ab1-ae63-bcda061741c1

environment:
  EROFS_OPTIONS: --all-time -T %{filesystem-time} -E fragments,fragdedupe=inode
  EROFS_WORKERS: --workers=%{max-jobs}
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

environment-nocache:
- EROFS_WORKERS

config:
  commands:
  - mkdir /fakecap
  - systemd-tmpfiles --root=/sysroot --create --prefix=/usr --prefix=/etc gnomeos-initial-usr.conf

  - mkdir -p definitions
  - |
    for entry in /usr/lib/repart.d/*.conf; do
      name="$(basename "${entry}")"
      num="${name%%-*}"
      if [ "${num}" -lt 30 ]; then
        cp "${entry}" definitions/
      fi
    done

  - |
    mkdir -p /var/tmp

  - |
    TMPDIR=/var/tmp \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
      systemd-repart \
        --definitions=/usr/lib/repart.mini.d \
        --empty=create \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --seed %{repart-seed} \
        --split=true \
        --root=/sysroot \
        '%{install-root}/mini.raw' \
        --json=pretty \
        >'%{install-root}/mini.repart.json'

  - |
    rm '%{install-root}/mini.raw'
