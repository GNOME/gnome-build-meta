kind: stack

depends:
- core/meta-gnome-core-apps.bst
- core/meta-gnome-core-os-services.bst
- core/meta-gnome-core-shell.bst
- core/systemd-presets.bst
- incubator/meta-gnome-incubator-apps.bst
- gnomeos-deps/gnome-mimeapps.bst
- sdk-platform.bst

- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- core-deps/xdg-desktop-portal-gnome.bst
- core-deps/xdg-desktop-portal-gtk.bst

- core-deps/phodav.bst
- gnomeos-deps/disable-iscsi.bst
- gnomeos-deps/flathub-config.bst
- gnomeos-deps/gnome-nightly-config.bst
- gnomeos-deps/journald-config.bst
- gnomeos-deps/nm-connectivity-config.bst
- gnomeos-deps/nsswitch-config.bst
- gnomeos-deps/plymouth-gnome-theme.bst
- gnomeos-deps/spice-vdagent.bst
- gnomeos-deps/wpa-supplicant-config.bst
- gnomeos-deps/sysupdate-config.bst
- gnomeos-deps/pcrlock-config.bst
- gnomeos-deps/udev-hide-usr.bst
- gnomeos-deps/hidraw-udev.bst

- gnomeos-deps/alsa-ucm-conf.bst
- gnomeos-deps/android-udev-rules.bst
- gnomeos-deps/bindfs.bst
- gnomeos-deps/fish.bst
- gnomeos-deps/fprintd.bst
- gnomeos-deps/nss-mdns.bst
- gnomeos-deps/opensc.bst
- gnomeos-deps/pam-pkcs11.bst
- gnomeos-deps/switcheroo-control.bst
- gnomeos-deps/uresourced.bst
- gnomeos-deps/zram-generator.bst
- core-deps/boltd.bst

- gnomeos-deps/ibus-anthy.bst
- gnomeos-deps/ibus-hangul.bst
- gnomeos-deps/ibus-libpinyin.bst

- gnomeos-deps/NetworkManager-openconnect.bst
- gnomeos-deps/NetworkManager-openvpn.bst
- gnomeos-deps/NetworkManager-vpnc.bst

- gnomeos-deps/noto-cjk.bst
- gnomeos-deps/words.bst

# For gvfs
- gnomeos-deps/wsdd.bst

- freedesktop-sdk.bst:components/pipewire-daemon.bst
- freedesktop-sdk.bst:components/wireplumber.bst

- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/useradd-default.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/bash-config.bst
- freedesktop-sdk.bst:components/ccid.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/man-db.bst
- freedesktop-sdk.bst:components/open-iscsi.bst
- freedesktop-sdk.bst:components/openssh-systemd.bst
- freedesktop-sdk.bst:components/rsync.bst
- freedesktop-sdk.bst:components/sof-firmware.bst
- freedesktop-sdk.bst:components/steam-devices.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
- freedesktop-sdk.bst:components/iio-sensor-proxy.bst

- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/nano.bst
- freedesktop-sdk.bst:components/vim.bst

- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/usbutils.bst

- core-deps/systemd-hwdb.bst

- gnomeos-deps/nftables.bst
- gnomeos-deps/firewalld.bst

- gnomeos-deps/uinput.bst

(?):
- arch == "aarch64":
    depends:
      (>):
      - gnomeos-deps/deps-aarch64.bst
