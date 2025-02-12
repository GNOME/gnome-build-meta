kind: script

build-depends:
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/deploy-tools.bst
- freedesktop-sdk.bst:snap-images/squashfs-tools.bst
- gnomeos/initial-scripts.bst
- gnomeos/repart-config.bst
- gnomeos/repart-config-mini.bst
- filename: gnomeos/filesystem.bst
  config:
    location: '/sysroot'

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  repart-seed: 35e34b2b-1fcf-4ab1-ae63-bcda061741c1

environment:
  SYSTEMD_REPART_MKFS_OPTIONS_SQUASHFS: -all-time %{filesystem-time}

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
       --noboot >'%{install-root}/vars.txt'

  - |
    mkdir -p /sysroot/usr/share/factory
    mv -T /sysroot/etc /sysroot/usr/share/factory/etc

  - |
    cat >/sysroot/usr/lib/tmpfiles.d/extra-etc.conf<<EOF
    C /etc/ModemManager
    C /etc/NetworkManager
    C /etc/UPower
    C /etc/X11
    C /etc/alsa
    C /etc/anthy-conf
    C /etc/appstream.conf
    C /etc/audit
    C /etc/avahi
    C /etc/bash_completion.d
    C /etc/bashrc
    C /etc/bindresvport.blacklist
    C /etc/binfmt.d
    C /etc/cups
    C /etc/cupshelpers
    C /etc/dbus-1
    C /etc/dconf
    C /etc/debuginfod
    C /etc/default
    C /etc/e2scrub.conf
    C /etc/environment
    C /etc/ethertypes
    C /etc/fish
    C /etc/flatpak
    C /etc/fonts
    C /etc/fstab
    C /etc/fuse.conf
    C /etc/fwupd
    C /etc/gamemode.ini
    C /etc/gdm
    C /etc/geoclue
    C /etc/grub.d
    C /etc/gss
    C /etc/gtk-3.0
    C /etc/hosts
    C /etc/init.d
    C /etc/iscsi
    C /etc/isns
    C /etc/kernel
    C /etc/ld.so.conf
    C /etc/ld.so.conf.d
    C /etc/libaudit.conf
    C /etc/libblockdev
    C /etc/libinput
    C /etc/libnl
    C /etc/libsmbios
    C /etc/locale.conf
    C /etc/localtime
    C /etc/login.defs
    C /etc/logrotate.d
    C /etc/lvm
    C /etc/man_db.conf
    C /etc/mke2fs.conf
    C /etc/modules-load.d
    C /etc/moduli
    C /etc/netconfig
    C /etc/openfortivpn
    C /etc/openldap
    C /etc/opensc.conf
    C /etc/ostree
    C /etc/pkcs11
    C /etc/pki
    C /etc/plymouth
    C /etc/polkit-1
    C /etc/profile
    C /etc/profile.d
    C /etc/protocols
    C /etc/pulse
    C /etc/rc_keymaps
    C /etc/rc_maps.cfg
    C /etc/rpc
    C /etc/rygel.conf
    C /etc/samba
    C /etc/sane.d
    C /etc/securetty
    C /etc/security
    C /etc/services
    C /etc/shells
    C /etc/skel
    C /etc/speech-dispatcher
    C /etc/ssh_config
    C /etc/sshd_config
    C /etc/ssl
    C /etc/subgid
    C /etc/subuid
    C /etc/sudo.conf
    C /etc/sudo_logsrvd.conf
    C /etc/sudoers
    C /etc/sudoers.d
    C /etc/sudoers.dist
    C /etc/sysctl.d
    C /etc/tpm2-tss
    C /etc/udev
    C /etc/udisks2
    C /etc/uresourced.conf
    C /etc/vdpau_wrapper.cfg
    C /etc/xattr.conf
    C /etc/xdg
    C /etc/xml
    C /etc/xtables.conf
    # FIXME: those files should be moved to /usr
    C /etc/tmpfiles.d
    C /etc/sysusers.d
    C! /etc/audit
    C! /etc/pam.d
    C! /etc/security
    C! /etc/subgid
    C! /etc/subuid
    C! /etc/systemd/coredump.conf
    C! /etc/systemd/homed.conf
    C! /etc/systemd/journal-upload.conf
    C! /etc/systemd/journald.conf
    C! /etc/systemd/logind.conf
    C! /etc/systemd/networkd.conf
    C! /etc/systemd/oomd.conf
    C! /etc/systemd/pstore.conf
    C! /etc/systemd/resolved.conf
    C! /etc/systemd/sleep.conf
    C! /etc/systemd/system.conf
    C! /etc/systemd/timesyncd.conf
    C! /etc/systemd/user.conf
    C! /etc/issue.net
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
    # conflicts with -all-time
    unset SOURCE_DATE_EPOCH

    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --definitions=/usr/lib/repart.d.mini \
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

  - |
    usr_uuid=$(jq -r '.[0].uuid' '%{install-root}/mini.repart.json')
    usr_verity_uuid=$(jq -r '.[1].uuid' '%{install-root}/mini.repart.json')
    cat <<EOF >>definitions/21-usr-A.conf
    UUID=${usr_uuid}
    EOF
    cat <<EOF >>definitions/20-usr-verity-A.conf
    UUID=${usr_verity_uuid}
    EOF

  - |
    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --defer-partitions=esp \
        --definitions=definitions \
        --empty=create \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --seed %{repart-seed} \
        --root='%{install-root}' \
        --split=true \
        '%{install-root}/disk.raw' \
        --json=pretty \
        >'%{install-root}/repart.json'
