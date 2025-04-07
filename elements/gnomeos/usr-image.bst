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
       --noroot --noboot >'%{install-root}/vars.txt'

  - |
    # Those files may be coming from systemd.

    # This one is a bit better than the one we provide.
    # FIXME: we should maybe backport things to it.
    rm /sysroot/etc/nsswitch.conf

    # This one is a fallback. We should start with en_US.UTF-8 set rather than C.UTF-8
    rm /sysroot/usr/share/factory/etc/locale.conf

    # This one, we do not want the one from systemd.
    rm /sysroot/usr/share/factory/etc/issue

    # FIXME: figure out pam.d configuration coming from systemd
    rm /sysroot/usr/share/factory/etc/pam.d/other
    rm /sysroot/usr/share/factory/etc/pam.d/system-auth

  - |
    # FIXME: move that in pam-config
    cp -rlTP /sysroot/etc/pam.d /sysroot/usr/lib/pam.d
    rm -rf /sysroot/etc/pam.d

  - |
    cat >/sysroot/usr/lib/tmpfiles.d/extra-etc.conf<<EOF
    # core-deps/ModemManager.bst (just directories)
    C /etc/ModemManager
    # core-deps/NetworkManager.bst (just directories)
    C /etc/NetworkManager
    # core-deps/upower.bst
    L /etc/UPower/UPower.conf
    # core-deps/systemd.bst
    # FIXME: remove this from factory
    # /etc/X11
    # freedesktop-sdk.bst:components/alsa-plugins.bst
    L /etc/alsa
    # vm-deps/anthy.bst
    # FIMXE: This looks like a development file.
    L /etc/anthy-conf
    # freedesktop-sdk.bst:components/audit.bst
    # FIXME: we are missing initial /etc/audit/audit.rules (which should not be a symlink)
    L! /etc/audit/audisp-filter.conf
    L! /etc/audit/audisp-remote.conf
    L! /etc/audit/auditd.conf
    L! /etc/audit/audit-stop.rules
    L! /etc/audit/plugins.d/af_unix.conf
    L! /etc/audit/plugins.d/au-remote.conf
    L! /etc/audit/plugins.d/filter.conf
    L! /etc/audit/plugins.d/syslog.conf
    L! /etc/audit/rules.d/10-base-config.rules
    L! /etc/libaudit.conf
    # freedesktop-sdk.bst:components/avahi.bst
    L /etc/avahi/avahi-autoipd.action
    L /etc/avahi/avahi-daemon.conf
    L /etc/avahi/avahi-dnsconfd.action
    L /etc/avahi/hosts
    L /etc/avahi/services/sftp-ssh.service
    L /etc/avahi/services/ssh.service
    # Various, we should move them to /usr/share:
    L /etc/bash_completion.d/000_bash_completion_compat.bash
    L /etc/bash_completion.d/cardos-tool
    L /etc/bash_completion.d/cryptoflex-tool
    L /etc/bash_completion.d/dnie-tool
    L /etc/bash_completion.d/egk-tool
    L /etc/bash_completion.d/eidenv
    L /etc/bash_completion.d/gids-tool
    L /etc/bash_completion.d/goid-tool
    L /etc/bash_completion.d/iasecc-tool
    L /etc/bash_completion.d/netkey-tool
    L /etc/bash_completion.d/npa-tool
    L /etc/bash_completion.d/openpgp-tool
    L /etc/bash_completion.d/opensc-asn1
    L /etc/bash_completion.d/opensc-explorer
    L /etc/bash_completion.d/opensc-notify
    L /etc/bash_completion.d/opensc-tool
    L /etc/bash_completion.d/piv-tool
    L /etc/bash_completion.d/pkcs11-register
    L /etc/bash_completion.d/pkcs11-tool
    L /etc/bash_completion.d/pkcs15-crypt
    L /etc/bash_completion.d/pkcs15-init
    L /etc/bash_completion.d/pkcs15-tool
    L /etc/bash_completion.d/sc-hsm-tool
    L /etc/bash_completion.d/westcos-tool

    # freedesktop-sdk.bst:components/bash-config.bst
    L /etc/bashrc

    # TODO: sort the rest of this mess
    C /etc/bindresvport.blacklist

    # freedesktop-sdk.bst:components/cups-daemon-only.bst
    L /etc/cups/cups-files.conf
    L /etc/cups/cups-files.conf.default
    L /etc/cups/cupsd.conf
    L /etc/cups/cupsd.conf.default
    L /etc/cups/snmp.conf
    L /etc/cups/snmp.conf.default
    L /etc/cups/ppd
    L /etc/cups/ssl
    # FIXME: move to /usr/share
    L /etc/dbus-1/system.d/cups.conf
    # core-deps/system-config-printer.bst
    L /etc/cupshelpers/preferreddrivers.xml
    # FIXME: move to /usr/share
    L /etc/dbus-1/system.d/com.redhat.NewPrinterNotification.conf
    L /etc/dbus-1/system.d/com.redhat.PrinterDriversInstaller.conf

    #
    L /etc/dbus-1/system.d/avahi-dbus.conf

    L /etc/dbus-1/system.d/gdm.conf
    L /etc/dbus-1/system.d/nm-fortisslvpn-service.conf
    L /etc/dbus-1/system.d/org.freedesktop.Flatpak.SystemHelper.conf
    L /etc/dbus-1/system.d/org.freedesktop.ModemManager1.conf

    # core-deps/systemd.bst
    # FIXME: do we need to have the directory
    d /etc/binfmt.d

    L /etc/ssh/ssh_config.d/20-systemd-ssh-proxy.conf
    L /etc/ssh/sshd_config.d/20-systemd-userdb.conf

    L /etc/dbus-1/session.conf
    L /etc/dbus-1/system.conf

    # freedesktop-sdk.bst:integration/ldconfig.bst
    L /etc/ld.so.conf
    # vm/mesa-default.bst
    L /etc/ld.so.conf.d/00_mesa.conf

    # FIXME: sort those and make them symlinks
    C /etc/dconf
    C /etc/debuginfod
    C /etc/default
    C /etc/e2scrub.conf
    C /etc/environment
    C /etc/ethertypes
    C /etc/fish
    C /etc/flatpak
    C /etc/fonts
    C /etc/fuse.conf
    C /etc/fwupd
    C /etc/gdm
    C /etc/geoclue
    C /etc/grub.d
    C /etc/gss
    C /etc/gtk-3.0
    C /etc/init.d
    C /etc/iscsi
    C /etc/isns
    C /etc/kernel
    C /etc/libblockdev
    C /etc/libinput
    C /etc/libnl
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
    C /etc/services
    C /etc/shells
    C /etc/skel
    C /etc/speech-dispatcher
    C /etc/ssh_config
    C /etc/sshd_config
    C /etc/ssl
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
    L /etc/passim.conf
    L /etc/issue
    L /etc/request-key.conf
    #L /etc/ssh
    L /etc/bluetooth
    L /etc/fprintd.conf

    L! /etc/security
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
    C! /etc/systemd/journal-remote.conf
    L! /etc/issue.net
    EOF

  - |
    case '%{arch}' in
      x86_64)
        cat >>/sysroot/usr/lib/tmpfiles.d/extra-etc.conf <<EOF
    C /etc/libsmbios
    EOF
        ;;
    esac

  - |
    mkdir -p /sysroot/usr/share/factory
    failures=()
    for p in $(grep -v "^#" </sysroot/usr/lib/tmpfiles.d/extra-etc.conf | grep -v "^$" | cut -d" " -f2); do
      mkdir -p "$(dirname "/sysroot/usr/share/factory${p}")"
      if cp -rlTP "/sysroot${p}" "/sysroot/usr/share/factory${p}"; then
        rm -rf "/sysroot${p}"
      else
        failures+=("${p}")
      fi
    done
    if [ "${#failures[*]}" -gt 0 ]; then
      for failure in "${failures[@]}"; do
        echo "Could not move ${failure}" >&2
      done
      exit 1
    fi

  - |
    find /sysroot/etc -depth -type d -empty -delete

  - |
    unknown=()
    for p in /sysroot/etc/*; do
      rel="${p#/sysroot}"
      case "${rel}" in
        /etc/systemd)
          # For those we copied the content instead
        ;;
        /etc/os-release|/etc/mtab|/etc/passwd|/etc/group|/etc/shadow|/etc/gshadow|/etc/ld.so.cache)
          # Those are created another way
        ;;
        /etc/X11|/etc/dracut.conf.d)
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

  - |
    usr_uuid=$(jq -r '.[0].uuid' '%{install-root}/mini.repart.json')
    usr_verity_uuid=$(jq -r '.[1].uuid' '%{install-root}/mini.repart.json')
    usr_label=$(jq -r '.[0].label' '%{install-root}/mini.repart.json')
    usr_verity_label=$(jq -r '.[1].label' '%{install-root}/mini.repart.json')
    # Because we do not use --root=/sysroot, then repart does not see
    # os-release and cannot expand %A. So we have to copy the label
    # from the first stage.
    sed -i "/^Label=/d" definitions/21-usr-A.conf
    sed -i "/^Label=/d" definitions/20-usr-verity-A.conf
    cat <<EOF >>definitions/21-usr-A.conf
    CopyBlocks=/mini.usr.raw
    UUID=${usr_uuid}
    Label=${usr_label}
    EOF
    cat <<EOF >>definitions/20-usr-verity-A.conf
    CopyBlocks=/mini.usr-verity.raw
    UUID=${usr_verity_uuid}
    Label=${usr_verity_label}
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
