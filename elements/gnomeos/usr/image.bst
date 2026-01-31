kind: script

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:vm/deploy-tools.bst
- gnomeos/usr/initial-scripts.bst
- gnomeos/repart-config.bst
- gnomeos/repart-config-mini.bst
- filename: gnomeos/usr/filesystem.bst
  config:
    location: '/sysroot'

(?):
- arch in ["x86_64"]:
    build-depends:
      (>):
      - gnomeos/initramfs/signed-nvidia-modules.bst

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
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
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --initscripts /etc/fdsdk/initial_scripts \
       --seed "%{sysroot-seed}" \
       --noroot --noboot >'%{install-root}/vars.txt'

  - |
    case '%{arch}' in
      x86_64)
        version="$(ls -1 /lib/modules | head -n1)"
        mkdir -p /sysroot/usr/lib/modules/"${version}"/kernel/drivers/video
        cp /usr/lib/modules/"${version}"/kernel/drivers/video/nvidia*.ko* /sysroot/usr/lib/modules/"${version}"/kernel/drivers/video/
        depmod -a -b /sysroot/usr "${version}"
        rm -rf /sysroot/usr/lib/modules/"${version}"/kernel/drivers/video/nvidia*.ko*
        ;;
    esac

  - |
    # Those files may be coming from systemd.

    # This one is a fallback. We should start with en_US.UTF-8 set rather than C.UTF-8
    rm /sysroot/usr/share/factory/etc/locale.conf

    # This one, we do not want the one from systemd.
    rm /sysroot/usr/share/factory/etc/issue

    # FIXME: figure out pam.d configuration coming from systemd
    rm /sysroot/usr/share/factory/etc/pam.d/other
    rm /sysroot/usr/share/factory/etc/pam.d/system-auth

    # These are symlinks and need to be created, not copied
    rm /sysroot/etc/audit/rules.d/10-base-config.rules
    rm /sysroot/etc/localtime

    # Those are taken care in /usr/lib/tmpfiles.d/20-systemd-ssh-generator.conf
    rm /sysroot/etc/ssh/ssh_config.d/20-systemd-ssh-proxy.conf
    rm /sysroot/etc/ssh/sshd_config.d/20-systemd-userdb.conf


  - |
    # FIXME: move that in pam-config
    cp -rlTP /sysroot/etc/pam.d /sysroot/usr/lib/pam.d
    rm -rf /sysroot/etc/pam.d

  - |
    mv -T /sysroot/efi /sysroot/usr/share/factory/efi

  - |
    mkdir -p /sysroot/usr/lib/confexts/gnomeos-base-config
    mv -T /sysroot/etc /sysroot/usr/lib/confexts/gnomeos-base-config/etc
    mkdir -p /sysroot/usr/lib/confexts/gnomeos-base-config/etc/extension-release.d
    cat <<EOF >/sysroot/usr/lib/confexts/gnomeos-base-config/etc/extension-release.d/extension-release.gnomeos-base-config
    ID="org.gnome.os"
    CONFEXT_LEVEL="%{image-version}"
    EOF

  - |
    cat >/sysroot/usr/lib/tmpfiles.d/extensions.conf<<EOF
    d /var/lib/extensions
    EOF

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
