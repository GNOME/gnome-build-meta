kind: script

build-depends:
- freedesktop-sdk.bst:vm/deploy-tools.bst
- freedesktop-sdk.bst:snap-images/squashfs-tools.bst
- vm-secure/initial-scripts.bst
- filename: vm-secure/filesystem.bst
  config:
    location: '/sysroot'

variables:
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  salt: 5ceca5e1f86ae62403b27e66c5160717f1bb88405a1d1d0853241c27f3764843

config:
  commands:
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --initscripts /etc/fdsdk/initial_scripts \
       --seed "%{uuidnamespace}" \
       --rootsource /dev/gpt-auto-root \
       --rootfstype btrfs \
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
    C /etc/dracut.conf.d
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
    C /etc/passwd
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
    mksquashfs /sysroot/usr '%{install-root}/usr_%{image-version}.squashfs'

  - |
    veritysetup format --salt="%{salt}" "%{install-root}/usr_%{image-version}.squashfs" "%{install-root}/usr_%{image-version}.verity" | sed '/^Root hash:[[:space:]]*/{;s///;q;};d' >"%{install-root}/usr-root-hash.txt"

  - |
    usr_part_uuid="$(cat "%{install-root}/usr-root-hash.txt" | sed -E 's/^([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12}).*/\1\2\3\4\5/')"
    mv "%{install-root}/usr_%{image-version}.squashfs" "%{install-root}/usr_%{image-version}_${usr_part_uuid}.squashfs"
    ln -s "usr_%{image-version}_${usr_part_uuid}.squashfs" '%{install-root}/usr.squashfs'

  - |
    usr_verity_part_uuid="$(cat "%{install-root}/usr-root-hash.txt" | sed -E 's/.*([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12})$/\1\2\3\4\5/')"
    mv "%{install-root}/usr_%{image-version}.verity" "%{install-root}/usr_%{image-version}_${usr_verity_part_uuid}.verity"
    ln -s "usr_%{image-version}_${usr_verity_part_uuid}.verity" '%{install-root}/usr.verity'
