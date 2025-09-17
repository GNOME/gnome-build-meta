kind: script

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/make-layer.bst
- gnomeos/initial-scripts.bst
- gnomeos/initial-scripts-devel.bst
- filename: gnomeos/filesystem.bst
  config:
    location: '/sysroot'
- filename: gnomeos/filesystem-devel.bst
  config:
    location: '/sysroot-devel'

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
       --sysroot /sysroot-devel \
       --initscripts /etc/fdsdk/initial_scripts-devel \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >'%{install-root}/vars.txt'

  - |
    mkdir -p /tmp/output/etc
    make-layer /sysroot/etc /sysroot-devel/etc /tmp/output/etc/etc

  - |
    cat >/sysroot-devel/usr/lib/tmpfiles.d/extra-etc-devel.conf<<EOF
    L /etc/apparmor.d
    # freedesktop-sdk.bst:components/perf.bst
    # FIXME: move to /usr/share/bash-completion/completions/
    L /etc/bash_completion.d/perf
    # gnomeos-deps/toolbox.bst
    L /etc/containers/toolbox.conf
    # freedesktop-sdk.bst:components/containers-common.bst
    L /etc/containers/policy.json
    L /etc/containers/registries.conf
    L /etc/containers/registries.conf.d/000-shortnames.conf
    L /etc/containers/registries.d/default.yaml
    # freedesktop-sdk.bst:components/git-lfs.bst
    L /etc/gitconfig
    # freedesktop-sdk.bst:components/binutils.bst
    L /etc/gprofng.rc
    # core-deps/libvirt.bst
    L /etc/libvirt
    L /etc/sasl2
    L /etc/ssh/ssh_config.d/30-libvirt-ssh-proxy.conf
    # freedesktop-sdk.bst:components/slang.bst
    L /etc/slsh.rc
    # vm-deps/swtpm.bst
    L /etc/swtpm-localca.conf
    L /etc/swtpm-localca.options
    L /etc/swtpm_setup.conf
    EOF

  - |
    find /tmp/output/etc

  - |
    mkdir -p /tmp/output/factory
    for p in $(grep -v "^#" </sysroot-devel/usr/lib/tmpfiles.d/extra-etc-devel.conf | grep -v "^$" | cut -d" " -f2); do
      mkdir -p "$(dirname "/tmp/output/factory${p}")"
      cp -rlTP "/tmp/output/etc${p}" "/tmp/output/factory${p}"
      rm -rf "/tmp/output/etc${p}"
    done

  - |
    find /tmp/output/etc/etc -depth -type d -empty -delete

  - |
    unknown=()
    for p in /tmp/output/etc/etc/*; do
      rel="${p#/tmp/output/etc}"
      case "${rel}" in
        /etc/systemd|/etc/ld.so.cache)
          # Those are created another way
        ;;
        /etc/logrotate.d)
          # Those should not exist
        ;;
        *)
          unknown+=("${rel}")
        ;;
      esac
    done
    if [ "${#unknown[*]}" -gt 0 ]; then
      echo "Unknown paths:" "${unknown[@]}"
      exit 1
    fi

  - |
    mkdir -p /sysroot-devel/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac
    cat <<EOF >/sysroot-devel/usr/lib/extension-release.d/extension-release.devel_%{image-version}
    ID=org.gnome.os
    VERSION_ID=${version_id}
    SYSEXT_LEVEL=%{image-version}
    EOF

  - |
    mkdir -p /tmp/output
    make-layer /sysroot/usr /sysroot-devel/usr /tmp/output/usr

  - |
    mkdir -p /tmp/output/usr/share/factory/etc
    cp -rlTP /tmp/output/factory /tmp/output/usr/share/factory

  - |
    mkdir -p /tmp/output/etc
    cp -T /sysroot-devel/usr/lib/os-release /tmp/output/etc/os-release

  - mkdir -p definitions
  - |
    cat <<EOF >definitions/10-devel.conf
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
        --root=/tmp/output \
        devel.raw \
        --json=pretty \
        >repart.json

  - |
    mv devel.usr.raw %{install-root}
