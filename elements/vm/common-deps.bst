kind: stack

depends:
- core/meta-gnome-core-os-services.bst
- core/meta-gnome-core-shell.bst
- core/meta-gnome-core-utilities.bst
- core/systemd-presets.bst
- sdk-platform.bst

- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- core-deps/xdg-desktop-portal-gnome.bst
- core-deps/xdg-desktop-portal-gtk.bst

- vm/flathub-config.bst
- vm/gnome-nightly-config.bst
- vm/plymouth-gnome-theme.bst
- vm/spice-vdagent.bst
- vm/wpa-supplicant-config.bst
- vm/nsswitch-config.bst
- vm/disable-iscsi.bst
- vm/journald-config.bst
- vm/systemd-firstboot-config.bst

- vm/fish.bst
- vm/nss-mdns.bst
- vm/opensc.bst
- vm/uresourced.bst
- vm/android-udev-rules.bst
- vm/alsa-ucm-conf.bst
- vm/fprintd.bst

- vm/ibus-anthy.bst
- vm/ibus-hangul.bst
- vm/ibus-libpinyin.bst

- vm/NetworkManager-openvpn.bst
- vm/NetworkManager-openconnect.bst
- vm/NetworkManager-fortisslvpn.bst
- vm/NetworkManager-vpnc.bst

- vm/noto-cjk.bst

- freedesktop-sdk.bst:components/pipewire-daemon.bst
- freedesktop-sdk.bst:components/wireplumber.bst

- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/useradd-default.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/bash-config.bst
- freedesktop-sdk.bst:components/ccid.bst
- freedesktop-sdk.bst:components/gamemode.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/man-db.bst
- freedesktop-sdk.bst:components/open-iscsi.bst
- freedesktop-sdk.bst:components/openssh-systemd.bst
- freedesktop-sdk.bst:components/rsync.bst
- freedesktop-sdk.bst:components/sof-firmware.bst
- freedesktop-sdk.bst:components/steam-devices.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
- freedesktop-sdk.bst:components/iio-sensor-proxy.bst

- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/nano.bst
